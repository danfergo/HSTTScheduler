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
 * File:   AvoidClashesConstraint.cpp
 * Author: danfergo
 * 
 * Created on 30 de Maio de 2016, 20:17
 */

#include "AvoidClashesConstraint.h"
#include <iostream>
#include <vector>
#include "../resources/Resource.h"
#include "../resources/ResourceGroup.h"
#include "../solutions/SolEvent.h"
#include <algorithm>    // std::find

AvoidClashesConstraint::AvoidClashesConstraint(string name, bool required, float weight, CostFunction costFunction) : Constraint(name, required, weight, costFunction) {
}

int AvoidClashesConstraint::evaluate(Solution * solution, Schedule * schedule) const {

    int cost = 0;

    for (vector<ResourceGroup*>::const_iterator resourceGroupsIt = mResourceGroups.begin(); resourceGroupsIt != mResourceGroups.end(); ++resourceGroupsIt) {
        for (vector<Resource*>::iterator resourceIt = (*resourceGroupsIt)->begin(); resourceIt != (*resourceGroupsIt)->end(); ++resourceIt) {
            vector<Time*> times;

            for (vector<SolEvent*>::iterator solIt = solution->begin(); solIt != solution->end(); ++solIt) {
                if ((*solIt)->requiresResource(*resourceIt)) {

                    if (find(times.begin(), times.end(), (*solIt)->getTime()) != times.end()) {
                        cost++;
                    } else {
                        times.push_back((*solIt)->getTime());
                    }

                }
            }
        }
    }
    return cost;

}

AvoidClashesConstraint::~AvoidClashesConstraint() {
}

