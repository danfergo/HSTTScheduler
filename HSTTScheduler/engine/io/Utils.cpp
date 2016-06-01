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
 * File:   Util.cpp
 * Author: danfergo
 * 
 * Created on 29 de Maio de 2016, 21:27
 */

#include "Utils.h"
#include <string.h>

XMLElement * Utils::getFirstChildElement(XMLElement * element, vector<const char *> names) {
    XMLElement * childElement = element->FirstChildElement();

    while (childElement != NULL) {
        for (std::vector<const char *>::iterator it = names.begin(); childElement != NULL && it != names.end(); ++it) {
            if (strcmp(childElement->Name(), *it) == 0) return childElement;
        }
        childElement = childElement->NextSiblingElement();
    }

    return NULL;
}

XMLElement * Utils::getNextSibilingElement(XMLElement * element, vector<const char *> names) {
    XMLElement * sibilingElement = element->NextSiblingElement();

    while (sibilingElement != NULL) {

        for (std::vector<const char *>::iterator it = names.begin(); sibilingElement != NULL && it != names.end(); ++it) {
            if (strcmp(sibilingElement->Name(), *it) == 0) return sibilingElement;
        }
        sibilingElement = sibilingElement->NextSiblingElement();
    }
    return NULL;
}

XMLElement * Utils::getFirstChildElementWith(XMLElement * element, const char * name, const char * attribute, const char * value) {
    XMLElement * childElement = element->FirstChildElement(name);

    while (childElement != NULL && strcmp(childElement->Attribute(attribute), value) != 0) {
        childElement = childElement->NextSiblingElement(name);
    }
    return childElement == NULL || strcmp(childElement->Attribute(attribute), value) != 0 ? NULL : childElement;
}

XMLElement * Utils::w(XMLElement * element, const char * name, const char * attribute, const char * value){
    XMLElement * sibilingElement = element->NextSiblingElement(name);

    while (sibilingElement != NULL && strcmp(sibilingElement->Attribute(attribute), value) != 0) {
        sibilingElement = sibilingElement->NextSiblingElement(name);
    }
    return sibilingElement == NULL || strcmp(sibilingElement->Attribute(attribute), value) != 0 ? NULL : sibilingElement;
}
