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
 * File:   XHSTTImporter.h
 * Author: danfergo
 *
 * Created on 28 de Maio de 2016, 22:51
 */

#ifndef XHSTTIMPORTER_H
#define XHSTTIMPORTER_H

#include <string>
#include <vector>
#include <map>
#include "../../lib/tinyxml2/tinyxml2.h"
#include "../model/Schedule.h"
#include "../model/times/TimeGroup.h"
#include "../model/times/Day.h"
#include "../model/times/Week.h"
#include "../model/resources/ResourceType.h"
#include "../model/resources/ResourceGroup.h"
#include "../model/resources/Resource.h"
#include "../model/resources/Role.h"
#include "../model/events/EventGroup.h"
#include "../model/events/Course.h"
#include "../model/solutions/Solution.h"
#include "../model/solutions/SolEvent.h"
#include "../model/constraints/AssignResourceConstraint.h"
#include "../model/constraints/AssignTimeConstraint.h"
#include "../model/constraints/AvoidClashesConstraint.h"


using namespace std;
using namespace tinyxml2;

class XHSTTImporter {
private:
    XMLDocument mDocument;
    static vector<const char *> TIME_GROUP_NAMES;
    static vector<const char *> EVENT_GROUP_NAMES;
    static vector<const char *> CONSTRAINT_NAMES;

    string mScheduleId;
    map<string, Time*> mTimes;
    map<string, TimeGroup*> mTimeGroups;
    map<string, Resource*> mResources;
    map<string, ResourceType*> mResourceTypes;
    map<string, ResourceGroup*> mResourceGroups;
    map<string, EventGroup*> mEventGroups;
    map<string, Event*> mEvents;
    map<string, Role*> mRoles;
    map<string, Constraint*> mConstraints;

public:
    XHSTTImporter(string filename);
    void readSchedule(Schedule& schedule);
    virtual ~XHSTTImporter();

private:
    void readInstance(XMLElement * instanceElement, Schedule & schedule);

    void readTimes(XMLElement * timesElement, Schedule & schedule);
    void readTimeGroups(XMLElement * timeGroupsElement);

    void readResources(XMLElement * resourcesElement, Schedule & schedule);
    void readResourceTypes(XMLElement * resourceTypesElement);
    void readResourceGroups(XMLElement * resourceGroupsElement);
    void readAssociatedResourceGroups(XMLElement * resourceGroupsElement, vector<ResourceGroup*> & resourceGroups, Resource * resource = NULL);

    void readEvents(XMLElement * eventsElement, Schedule & schedule);
    void readEventGroups(XMLElement * eventGroupsElement);
    void readAssociatedEventGroups(XMLElement * eventGroupsElement, vector<EventGroup*> & eventGroups, Event * event = NULL);
    void readEventResources(XMLElement * resourcesElement, Event * event);

    void readConstraints(XMLElement * constraintsElement, Schedule & schedule);
    void readAssignResourceConstraint(XMLElement * constraintElement, AssignResourceConstraint * constraint);
    void readAssignTimeConstraint(XMLElement * constraintElement, AssignTimeConstraint * constraint);
    void readAvoidClashesConstraint(XMLElement * constraintElement, AvoidClashesConstraint * constraint);

    void readSolutions(XMLElement * solutionsGroupsElement, Schedule & schedule);
    void readSolution(XMLElement * solutionElement, Schedule & schedule);
    void readSolutionEvents(XMLElement * eventsElement, Schedule & schedule, Solution * solution);
    void readSolutionEventResources(XMLElement * resourcesElement, SolEvent * solEvent);


};

#endif /* XHSTTIMPORTER_H */

