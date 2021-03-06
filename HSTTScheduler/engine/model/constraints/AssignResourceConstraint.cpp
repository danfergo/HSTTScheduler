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
 * File:   AssignResourceConstraint.cpp
 * Author: danfergo
 * 
 * Created on 30 de Maio de 2016, 20:51
 */

#include "AssignResourceConstraint.h"
#include <iostream>
#include <vector>
#include "../resources/Role.h"
#include "../solutions/SolEvent.h"
#include "../Schedule.h"

AssignResourceConstraint::AssignResourceConstraint(string name, bool required, float weight, CostFunction costFunction, string roleName) : Constraint(name, required, weight, costFunction), mRoleName(roleName) {

}

int AssignResourceConstraint::evaluate(Solution * solution, Schedule * schedule) const {
    int cost = 0;

    for (vector<EventGroup*>::const_iterator evenGrouptIt = mEventGroups.begin(); evenGrouptIt != mEventGroups.end(); ++evenGrouptIt) {
        
        for (vector<Event*>::iterator eventIt = (*evenGrouptIt)->begin(); eventIt != (*evenGrouptIt)->end(); ++eventIt) {
            map<string, Role*> nonAssignedRoles = (*eventIt)->getNonAssignedRoles();
            SolEvent * solEvent = Schedule::eventSolution(solution, *eventIt);

            for (map<string, Role*>::iterator roleIt = nonAssignedRoles.begin(); roleIt != nonAssignedRoles.end(); ++roleIt) {
                if (solEvent->getRoles().find(roleIt->first) == solEvent->getRoles().end()) {
                    cost++;
                }
            }

        }
    }
    return cost;
}

AssignResourceConstraint::~AssignResourceConstraint() {

}

