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
 * File:   SolEvent.cpp
 * Author: danfergo
 * 
 * Created on 28 de Maio de 2016, 22:54
 */

#include "SolEvent.h"

SolEvent::SolEvent(Event * event, Time * time) : mEvent(event), mTime(time) {
}

SolEvent::SolEvent(const SolEvent& orig) {
}

map<string, Role*> & SolEvent::getRoles() {
    return mRoles;
}

Event * SolEvent::getEvent() {
    return mEvent;
}

Time * SolEvent::getTime() {
    return mTime;
}

bool SolEvent::requiresResource(Resource * resource){
    for (map<string,Role*>::const_iterator roleIt = mRoles.begin(); roleIt != mRoles.end(); ++roleIt) {
        if((roleIt->second)->getResource() == resource){
            return true;
        }
    }
    
    for (map<string,Role*>::const_iterator roleIt = mEvent->getAssignedRoles().begin(); roleIt != mEvent->getAssignedRoles().end(); ++roleIt) {
        if((roleIt->second)->getResource() == resource){
            return true;
        }
    }
    
    return false;
}


SolEvent::~SolEvent() {
}

