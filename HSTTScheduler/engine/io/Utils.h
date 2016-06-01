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
 * File:   Util.h
 * Author: danfergo
 *
 * Created on 29 de Maio de 2016, 21:27
 */

#ifndef UTIL_H
#define UTIL_H

#include "../../lib/tinyxml2/tinyxml2.h"
#include <vector>

using namespace std;
using namespace tinyxml2;

class Utils {
public:
    static XMLElement * getFirstChildElement(XMLElement * element, vector<const char *> names);
    static XMLElement * getNextSibilingElement(XMLElement * element, vector<const char *> names);
    static XMLElement * getFirstChildElementWith(XMLElement * element, const char * name, const char * attribute, const char * value);
    static XMLElement * getNextSibilingElementWith(XMLElement * element, const char * name, const char * attribute, const char * value);
};

#endif /* UTIL_H */

