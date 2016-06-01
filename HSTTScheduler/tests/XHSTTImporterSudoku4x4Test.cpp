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
 * File:   XHSTTImporterTest.cpp
 * Author: danfergo
 *
 * Created on 29 de Maio de 2016, 10:43
 */

#include <stdlib.h>
#include <iostream>

#include "../engine/io/XHSTTImporter.h"
#include "../engine/model/Schedule.h"
#include "../engine/evaluator/Evaluator.h"
#include "../engine/evaluator/Cost.h"

/*
 * Simple C++ Test Suite
 */
Schedule schedule;

void importSchedule() {
    std::cout << "XHSTTImporterSudoku4x4Test test 1" << std::endl;

    XHSTTImporter importer("../datasets/ArtificialSudoku4x4.xml");

    importer.readSchedule(schedule);

}

void checkSizes() {
    std::cout << "XHSTTImporterSudoku4x4Test test 2" << std::endl;

    int nEvents = schedule.getEvents().size();
    if (nEvents != 16)
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of events is: " << nEvents << std::endl;

    int nTimes = schedule.getTimes().size();
    if (nTimes != 4) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of times is: " << nTimes << std::endl;
    }

    int nResources = schedule.getResources().size();
    if (nResources != 4 * 3) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of times is: " << nResources << std::endl;
    }

    int nSolutions = schedule.getSolutions().size();
    if (nSolutions != 1) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of solutions is: " << nSolutions << std::endl;
    }

    int nConstraints = schedule.getConstraints().size();
    if (nConstraints != 6) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of constraints is: " << nConstraints << std::endl;
    }

    int nEventsFirstSolution = schedule.getSolutions().at(0)->size();
    if (nEventsFirstSolution != 16) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSizes (XHSTTImporterSudoku4x4Test) message=number of events in the first solution is: " << nEventsFirstSolution << std::endl;
    }
}

void checkSolution() {
    std::cout << "XHSTTImporterSudoku4x4Test test 3" << std::endl;

    Evaluator evaluator(schedule);
    Cost cost = evaluator.evaluate();

    if (cost.Infeasibility != 0 || cost.Objective != 0) {
        std::cout << "%TEST_FAILED% time=0 testname=checkSolution (XHSTTImporterSudoku4x4Test) message= infeasibility cost is : " << cost.Infeasibility << ", objective is: " << cost.Objective << std::endl;
    }
}

int main(int argc, char** argv) {
    std::cout << "%SUITE_STARTING% XHSTTImporterSudoku4x4Test" << std::endl;
    std::cout << "%SUITE_STARTED%" << std::endl;

    std::cout << "%TEST_STARTED% importSchedule (XHSTTImporterSudoku4x4Test)" << std::endl;
    importSchedule();
    std::cout << "%TEST_FINISHED% time=0 importSchedule (XHSTTImporterSudoku4x4Test)" << std::endl;

    std::cout << "%TEST_STARTED% checkSizes (XHSTTImporterSudoku4x4Test)\n" << std::endl;
    checkSizes();
    std::cout << "%TEST_FINISHED% time=0 checkSizes (XHSTTImporterSudoku4x4Test)" << std::endl;

    std::cout << "%TEST_STARTED% checkSolution (XHSTTImporterSudoku4x4Test)\n" << std::endl;
    checkSolution();
    std::cout << "%TEST_FINISHED% time=0 checkSolution (XHSTTImporterSudoku4x4Test)" << std::endl;

    std::cout << "%SUITE_FINISHED% time=0" << std::endl;

    return (EXIT_SUCCESS);
}

