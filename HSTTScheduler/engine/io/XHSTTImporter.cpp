/*
 * The MIT License
 *
 * Copyright 2016 danfergo.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

/* 
 * File:   XHSTTImporter.cpp
 * Author: danfergo
 * 
 * Created on 28 de Maio de 2016, 22:51
 */

#include "XHSTTImporter.h"
#include "Utils.h"
#include <iostream>
#include <sstream>
#include <string.h>
#include <cstdlib>

vector<const char *> XHSTTImporter::TIME_GROUP_NAMES;
vector<const char *> XHSTTImporter::EVENT_GROUP_NAMES;
vector<const char *> XHSTTImporter::CONSTRAINT_NAMES;

XHSTTImporter::XHSTTImporter(string filename) {

    mDocument.LoadFile(filename.c_str());


    if (TIME_GROUP_NAMES.empty()) {
        TIME_GROUP_NAMES.push_back("TimeGroup");
        TIME_GROUP_NAMES.push_back("Day");
        TIME_GROUP_NAMES.push_back("Week");
    }

    if (EVENT_GROUP_NAMES.empty()) {
        EVENT_GROUP_NAMES.push_back("EventGroup");
        EVENT_GROUP_NAMES.push_back("Course");
    }

    if (CONSTRAINT_NAMES.empty()) {
        CONSTRAINT_NAMES.push_back("AssignResourceConstraint");
        CONSTRAINT_NAMES.push_back("AssignTimeConstraint");
        CONSTRAINT_NAMES.push_back("PreferResourcesConstraint");
        CONSTRAINT_NAMES.push_back("AvoidClashesConstraint");
    }
}

void XHSTTImporter::readSchedule(Schedule& schedule) {

    XMLElement * instancesElement = mDocument.FirstChild()->FirstChildElement("Instances");
    XMLElement * firstInstanceElement = instancesElement->FirstChildElement("Instance");
    readInstance(firstInstanceElement, schedule); //TODO improve this

    XMLElement * solutionsGroupsElement = mDocument.FirstChild()->FirstChildElement("SolutionGroups");
    readSolutions(solutionsGroupsElement, schedule);


    //readTimes()

    //XMLPrinter printer;
    //element->Accept(&printer);
    //cout << printer.CStr();
}

// ------------------------- TIMES ------------------------------------

void XHSTTImporter::readInstance(XMLElement * instanceElement, Schedule & schedule) {
    mScheduleId = instanceElement->Attribute("Id");

    XMLElement * timesElement = instanceElement->FirstChildElement("Times");
    readTimes(timesElement, schedule);

    XMLElement * resourcesElement = instanceElement->FirstChildElement("Resources");
    readResources(resourcesElement, schedule);


    XMLElement * eventsElement = instanceElement->FirstChildElement("Events");
    readEvents(eventsElement, schedule);

    XMLElement * constraintsElement = instanceElement->FirstChildElement("Constraints");
    readConstraints(constraintsElement, schedule);
}

void XHSTTImporter::readTimes(XMLElement * timesElement, Schedule & schedule) {
    XMLElement * timeGroupsElement = timesElement->FirstChildElement("TimeGroups");

    if (timeGroupsElement != NULL) {
        readTimeGroups(timeGroupsElement);

        //read times
        XMLElement * element = timesElement->FirstChildElement("Time");
        while (element != NULL) {
            XMLElement * timeGroupElement = Utils::getFirstChildElement(element, TIME_GROUP_NAMES);
            if (timeGroupElement != NULL) {
                string timeGroupId = timeGroupElement->Attribute("Reference");
                string id = element->Attribute("Id");
                string name = element->FirstChildElement("Name")->GetText();
                //mTimeGroups.at(timeGroupId)->insert(pair<string, Time*>(id, new Time(name)));
                Time * time = new Time(name, mTimeGroups.at(timeGroupId));
                schedule.getTimes().push_back(time);
                mTimes.insert(pair<string, Time*>(id, time));
            }

            element = element->NextSiblingElement("Time");
        }
    }
};

void XHSTTImporter::readTimeGroups(XMLElement * timeGroupsElement) {

    XMLElement * element = Utils::getFirstChildElement(timeGroupsElement, TIME_GROUP_NAMES);
    while (element != NULL) {
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();

        if (strcmp(element->Name(), "Day") == 0) {
            mTimeGroups.insert(pair<string, Day*> (id, new Day(name)));
        } else if (strcmp(element->Name(), "Week") == 0) {
            mTimeGroups.insert(pair<string, Week*> (id, new Week(name)));
        } else {
            mTimeGroups.insert(pair<string, TimeGroup*> (id, new TimeGroup(name)));
        }


        element = Utils::getNextSibilingElement(element, TIME_GROUP_NAMES);
    }
}

// ------------------------- RESOURCES --------------------------------

void XHSTTImporter::readResources(XMLElement * resourcesElement, Schedule & schedule) {
    XMLElement * resourceTypesElement = resourcesElement->FirstChildElement("ResourceTypes");
    readResourceTypes(resourceTypesElement);

    XMLElement * resourceGroupsElement = resourcesElement->FirstChildElement("ResourceGroups");
    readResourceGroups(resourceGroupsElement);


    //read times
    XMLElement * element = resourcesElement->FirstChildElement("Resource");
    while (element != NULL) {
        string resourceTypeId = element->FirstChildElement("ResourceType")->Attribute("Reference");
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();
        Resource* resource = new Resource(name, mResourceTypes.at(resourceTypeId));
        readAssociatedResourceGroups(element->FirstChildElement("ResourceGroups"), resource->getResourceGroups(), resource);
        schedule.getResources().push_back(resource);
        mResources.insert(pair<string, Resource*>(id, resource));

        //resourceTypes.at(resourceTypeId)->insert(pair<string, Resource*>(id));

        element = element->NextSiblingElement("Resource");
    }
}

void XHSTTImporter::readResourceTypes(XMLElement * resourceTypesElement) {
    XMLElement * element = resourceTypesElement->FirstChildElement("ResourceType");

    while (element != NULL) {
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();
        mResourceTypes.insert(pair<string, ResourceType*> (id, new ResourceType(name)));

        element = element->NextSiblingElement("ResourceType");
    }
}

void XHSTTImporter::readResourceGroups(XMLElement * resourceGroupsElement) {

    XMLElement * element = resourceGroupsElement->FirstChildElement("ResourceGroup");
    while (element != NULL) {
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();
        string resourceTypeId = element->FirstChildElement("ResourceType")->Attribute("Reference");
        ResourceType * resourceType = mResourceTypes.at(resourceTypeId);
        mResourceGroups.insert(pair<string, ResourceGroup*> (id, new ResourceGroup(name, resourceType)));

        element = element->NextSiblingElement("ResourceGroup");
    }
}

void XHSTTImporter::readAssociatedResourceGroups(XMLElement * resourceGroupsElement, vector<ResourceGroup*> & resourceGroups, Resource * resource) {

    XMLElement * element = resourceGroupsElement->FirstChildElement("ResourceGroup");
    while (element != NULL) {
        string id = element->Attribute("Reference");
        ResourceGroup * resourceGroup = mResourceGroups.at(id);
        if (resource != NULL) {
            resourceGroup->push_back(resource);
        }
        resourceGroups.push_back(resourceGroup);

        element = element->NextSiblingElement("ResourceGroup");
    }
}

// ------------------------- EVENTS --------------------------------

void XHSTTImporter::readEvents(XMLElement * eventsElement, Schedule & schedule) {
    int duration;

    XMLElement * eventGroupsElement = eventsElement->FirstChildElement("EventGroups");
    readEventGroups(eventGroupsElement);

    //read times
    XMLElement * element = eventsElement->FirstChildElement("Event");
    while (element != NULL) {
        string courseId = element->FirstChildElement("Course")->Attribute("Reference");
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();
        istringstream(element->FirstChildElement("Duration")->GetText()) >> duration;
        Event * event = new Event(name, (Course *) mEventGroups.at(courseId), duration);
        readEventResources(element->FirstChildElement("Resources"), event);
        readAssociatedEventGroups(element->FirstChildElement("EventGroups"), event->getEventGroups(), event);
        mEvents.insert(pair<string, Event*>(id, event));
        schedule.getEvents().push_back(event);
        //mEventGroups.at(courseId)->insert(pair<string, Event*>(id, event));

        element = element->NextSiblingElement("Event");
    }
}

void XHSTTImporter::readEventGroups(XMLElement * eventGroupsElement) {
    XMLElement * element = Utils::getFirstChildElement(eventGroupsElement, EVENT_GROUP_NAMES);

    while (element != NULL) {
        string id = element->Attribute("Id");
        string name = element->FirstChildElement("Name")->GetText();
        EventGroup * eventGroup;

        if (strcmp(element->Name(), "EventGroup") == 0) {
            eventGroup = new EventGroup(name);
        } else if (strcmp(element->Name(), "Course") == 0) {
            eventGroup = new Course(name);
        }
        mEventGroups.insert(pair<string, EventGroup*> (id, eventGroup));

        element = Utils::getNextSibilingElement(element, EVENT_GROUP_NAMES);
    }
}

void XHSTTImporter::readAssociatedEventGroups(XMLElement * eventGroupsElement, vector<EventGroup*> & eventGroups, Event * event) {

    XMLElement * element = eventGroupsElement->FirstChildElement("EventGroup");
    while (element != NULL) {
        string id = element->Attribute("Reference");
        if (event != NULL) {
            mEventGroups.at(id)->push_back(event);
        }
        EventGroup * eventGroup = mEventGroups.at(id);
        eventGroups.push_back(eventGroup);

        element = element->NextSiblingElement("EventGroup");
    }
}

void XHSTTImporter::readEventResources(XMLElement * resourcesElement, Event * event) {
    XMLElement * element = resourcesElement->FirstChildElement("Resource");
    while (element != NULL) {
        const char * resourceId = element->Attribute("Reference");
        string roleName = element->FirstChildElement("Role")->GetText();

        Role * role;
        if (resourceId != NULL) {
            role = new Role(roleName, mResources.at(resourceId));
            event->getAssignedRoles().insert(pair<string, Role*>(roleName, role));
            ///mRoles.insert(pair <string, Role*>(roleName, role));
        } else {
            string resourceTypeId = element->FirstChildElement("ResourceType")->Attribute("Reference");
            role = new Role(roleName, mResourceTypes.at(resourceTypeId));
            event->getNonAssignedRoles().insert(pair<string, Role*>(roleName, role));

        }

        // cout << resourceId << " " << roleName << endl;
        //mRoles.insert(pair <string, Role*>(roleName, role));

        element = element->NextSiblingElement("Resource");
    }
}


// ------------------------- SOLUTION --------------------------------

void XHSTTImporter::readSolutions(XMLElement * solutionsGroupsElement, Schedule & schedule) {
    XMLElement * solutionGroupElement = solutionsGroupsElement->FirstChildElement("SolutionGroup");

    while (solutionGroupElement != NULL) {
        XMLElement * solutionElement = Utils::getFirstChildElementWith(solutionGroupElement, "Solution", "Reference", mScheduleId.c_str());

        while (solutionElement != NULL) {
            readSolution(solutionElement, schedule);
            solutionElement = Utils::getNextSibilingElementWith(solutionElement, "Solution", "Reference", mScheduleId.c_str());
        }
        
        solutionGroupElement = solutionGroupElement->NextSiblingElement("SolutionGroup");
    }
}

void XHSTTImporter::readSolution(XMLElement * solutionElement, Schedule & schedule) {
    XMLElement * eventsElement = solutionElement->FirstChildElement("Events");
    Solution * solution = new Solution();
    cout << " ------------------" << endl;
    readSolutionEvents(eventsElement, schedule, solution);
    schedule.getSolutions().push_back(solution);
}

void XHSTTImporter::readSolutionEvents(XMLElement * eventsElement, Schedule & schedule, Solution * solution) {
    XMLElement * element = eventsElement->FirstChildElement("Event");

    while (element != NULL) {
        XMLElement * resourcesElement = element->FirstChildElement("Resources");
        string timeId = element->FirstChildElement("Time")->Attribute("Reference");
        string eventId = element->Attribute("Reference");
        SolEvent * solEvent = new SolEvent(mEvents.at(eventId), mTimes.at(timeId));

        readSolutionEventResources(resourcesElement, solEvent);
        solution->push_back(solEvent);

        element = element->NextSiblingElement("Event");
    }
}

void XHSTTImporter::readSolutionEventResources(XMLElement * resourcesElement, SolEvent * solEvent) {
    XMLElement * element = resourcesElement->FirstChildElement("Resource");

    while (element != NULL) {
        string roleName = element->FirstChildElement("Role")->GetText();
        string resourceId = element->Attribute("Reference");

        solEvent->getRoles().insert(pair<string, Role*>(roleName, new Role(roleName, mResources.at(resourceId))));

        element = element->NextSiblingElement("Resource");
    }
}

void XHSTTImporter::readConstraints(XMLElement * constraintsElement, Schedule & schedule) {
    XMLElement * element = Utils::getFirstChildElement(constraintsElement, CONSTRAINT_NAMES);

    while (element != NULL) {
        string name = element->FirstChildElement("Name")->GetText();
        bool required = strcmp(element->FirstChildElement("Required")->GetText(), "true") == 0;
        const char * costFunctionStr = element->FirstChildElement("CostFunction")->GetText();
        Constraint::CostFunction costFunction = Constraint::CostFunctionToEnum(costFunctionStr);
        float weight = atof(element->FirstChildElement("Weight")->GetText());

        if (strcmp(element->Name(), "AssignResourceConstraint") == 0) {

            string roleName = element->FirstChildElement("Role")->GetText();
            AssignResourceConstraint * assignResourceConstraint = new AssignResourceConstraint(name, required, weight, costFunction, roleName);
            readAssignResourceConstraint(element, assignResourceConstraint);
            schedule.getConstraints().push_back(assignResourceConstraint);
        } else if (strcmp(element->Name(), "AssignTimeConstraint") == 0) {

            AssignTimeConstraint * assignTimeConstraint = new AssignTimeConstraint(name, required, weight, costFunction);
            readAssignTimeConstraint(element, assignTimeConstraint);

            schedule.getConstraints().push_back(assignTimeConstraint);
        } else if (strcmp(element->Name(), "AvoidClashesConstraint") == 0) {

            AvoidClashesConstraint * avoidClashesConstraint = new AvoidClashesConstraint(name, required, weight, costFunction);
            readAvoidClashesConstraint(element, avoidClashesConstraint);

            schedule.getConstraints().push_back(avoidClashesConstraint);
        }

        element = Utils::getNextSibilingElement(element, CONSTRAINT_NAMES);
    }
}

void XHSTTImporter::readAssignResourceConstraint(XMLElement * constraintElement, AssignResourceConstraint * constraint) {

    XMLElement * eventGroups = constraintElement->FirstChildElement("AppliesTo")->FirstChildElement("EventGroups");
    readAssociatedEventGroups(eventGroups, constraint->appliesTo());
}

void XHSTTImporter::readAssignTimeConstraint(XMLElement * constraintElement, AssignTimeConstraint * constraint) {

    XMLElement * eventGroups = constraintElement->FirstChildElement("AppliesTo")->FirstChildElement("EventGroups");
    readAssociatedEventGroups(eventGroups, constraint->appliesTo());
}

void XHSTTImporter::readAvoidClashesConstraint(XMLElement * constraintElement, AvoidClashesConstraint * constraint) {

    XMLElement * resourceGroups = constraintElement->FirstChildElement("AppliesTo")->FirstChildElement("ResourceGroups");
    readAssociatedResourceGroups(resourceGroups, constraint->appliesTo());
}

XHSTTImporter::~XHSTTImporter() {
}

