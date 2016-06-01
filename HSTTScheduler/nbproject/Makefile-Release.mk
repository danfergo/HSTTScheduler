#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/engine/evaluator/Cost.o \
	${OBJECTDIR}/engine/evaluator/Evaluator.o \
	${OBJECTDIR}/engine/io/Utils.o \
	${OBJECTDIR}/engine/io/XHSTTExporter.o \
	${OBJECTDIR}/engine/io/XHSTTImporter.o \
	${OBJECTDIR}/engine/model/Schedule.o \
	${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o \
	${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o \
	${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o \
	${OBJECTDIR}/engine/model/constraints/Constraint.o \
	${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o \
	${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o \
	${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o \
	${OBJECTDIR}/engine/model/events/Course.o \
	${OBJECTDIR}/engine/model/events/Event.o \
	${OBJECTDIR}/engine/model/events/EventGroup.o \
	${OBJECTDIR}/engine/model/resources/Resource.o \
	${OBJECTDIR}/engine/model/resources/ResourceGroup.o \
	${OBJECTDIR}/engine/model/resources/ResourceType.o \
	${OBJECTDIR}/engine/model/resources/Role.o \
	${OBJECTDIR}/engine/model/solutions/SolEvent.o \
	${OBJECTDIR}/engine/model/solutions/Solution.o \
	${OBJECTDIR}/engine/model/times/Day.o \
	${OBJECTDIR}/engine/model/times/Time.o \
	${OBJECTDIR}/engine/model/times/TimeGroup.o \
	${OBJECTDIR}/engine/model/times/Week.o \
	${OBJECTDIR}/lib/tinyxml2/tinyxml2.o \
	${OBJECTDIR}/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1 \
	${TESTDIR}/TestFiles/f2

# Test Object Files
TESTOBJECTFILES= \
	${TESTDIR}/tests/XHSTTImporterArtificialAbramson15Test.o \
	${TESTDIR}/tests/XHSTTImporterSudoku4x4Test.o

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/hsttscheduler

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/hsttscheduler: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/hsttscheduler ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/engine/evaluator/Cost.o: engine/evaluator/Cost.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/evaluator
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/evaluator/Cost.o engine/evaluator/Cost.cpp

${OBJECTDIR}/engine/evaluator/Evaluator.o: engine/evaluator/Evaluator.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/evaluator
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/evaluator/Evaluator.o engine/evaluator/Evaluator.cpp

${OBJECTDIR}/engine/io/Utils.o: engine/io/Utils.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/Utils.o engine/io/Utils.cpp

${OBJECTDIR}/engine/io/XHSTTExporter.o: engine/io/XHSTTExporter.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/XHSTTExporter.o engine/io/XHSTTExporter.cpp

${OBJECTDIR}/engine/io/XHSTTImporter.o: engine/io/XHSTTImporter.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/XHSTTImporter.o engine/io/XHSTTImporter.cpp

${OBJECTDIR}/engine/model/Schedule.o: engine/model/Schedule.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/Schedule.o engine/model/Schedule.cpp

${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o: engine/model/constraints/AssignResourceConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o engine/model/constraints/AssignResourceConstraint.cpp

${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o: engine/model/constraints/AssignTimeConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o engine/model/constraints/AssignTimeConstraint.cpp

${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o: engine/model/constraints/AvoidClashesConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o engine/model/constraints/AvoidClashesConstraint.cpp

${OBJECTDIR}/engine/model/constraints/Constraint.o: engine/model/constraints/Constraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/Constraint.o engine/model/constraints/Constraint.cpp

${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o: engine/model/constraints/EventGroupsBasedContraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o engine/model/constraints/EventGroupsBasedContraint.cpp

${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o: engine/model/constraints/PreferResourcesConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o engine/model/constraints/PreferResourcesConstraint.cpp

${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o: engine/model/constraints/ResourceGroupsBasedContraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o engine/model/constraints/ResourceGroupsBasedContraint.cpp

${OBJECTDIR}/engine/model/events/Course.o: engine/model/events/Course.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/Course.o engine/model/events/Course.cpp

${OBJECTDIR}/engine/model/events/Event.o: engine/model/events/Event.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/Event.o engine/model/events/Event.cpp

${OBJECTDIR}/engine/model/events/EventGroup.o: engine/model/events/EventGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/EventGroup.o engine/model/events/EventGroup.cpp

${OBJECTDIR}/engine/model/resources/Resource.o: engine/model/resources/Resource.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/Resource.o engine/model/resources/Resource.cpp

${OBJECTDIR}/engine/model/resources/ResourceGroup.o: engine/model/resources/ResourceGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/ResourceGroup.o engine/model/resources/ResourceGroup.cpp

${OBJECTDIR}/engine/model/resources/ResourceType.o: engine/model/resources/ResourceType.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/ResourceType.o engine/model/resources/ResourceType.cpp

${OBJECTDIR}/engine/model/resources/Role.o: engine/model/resources/Role.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/Role.o engine/model/resources/Role.cpp

${OBJECTDIR}/engine/model/solutions/SolEvent.o: engine/model/solutions/SolEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/solutions
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/solutions/SolEvent.o engine/model/solutions/SolEvent.cpp

${OBJECTDIR}/engine/model/solutions/Solution.o: engine/model/solutions/Solution.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/solutions
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/solutions/Solution.o engine/model/solutions/Solution.cpp

${OBJECTDIR}/engine/model/times/Day.o: engine/model/times/Day.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Day.o engine/model/times/Day.cpp

${OBJECTDIR}/engine/model/times/Time.o: engine/model/times/Time.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Time.o engine/model/times/Time.cpp

${OBJECTDIR}/engine/model/times/TimeGroup.o: engine/model/times/TimeGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/TimeGroup.o engine/model/times/TimeGroup.cpp

${OBJECTDIR}/engine/model/times/Week.o: engine/model/times/Week.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Week.o engine/model/times/Week.cpp

${OBJECTDIR}/lib/tinyxml2/tinyxml2.o: lib/tinyxml2/tinyxml2.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/tinyxml2
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/tinyxml2/tinyxml2.o lib/tinyxml2/tinyxml2.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-tests-subprojects .build-conf ${TESTFILES}
.build-tests-subprojects:

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/XHSTTImporterSudoku4x4Test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f2: ${TESTDIR}/tests/XHSTTImporterArtificialAbramson15Test.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS} 


${TESTDIR}/tests/XHSTTImporterSudoku4x4Test.o: tests/XHSTTImporterSudoku4x4Test.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/XHSTTImporterSudoku4x4Test.o tests/XHSTTImporterSudoku4x4Test.cpp


${TESTDIR}/tests/XHSTTImporterArtificialAbramson15Test.o: tests/XHSTTImporterArtificialAbramson15Test.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/XHSTTImporterArtificialAbramson15Test.o tests/XHSTTImporterArtificialAbramson15Test.cpp


${OBJECTDIR}/engine/evaluator/Cost_nomain.o: ${OBJECTDIR}/engine/evaluator/Cost.o engine/evaluator/Cost.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/evaluator
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/evaluator/Cost.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/evaluator/Cost_nomain.o engine/evaluator/Cost.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/evaluator/Cost.o ${OBJECTDIR}/engine/evaluator/Cost_nomain.o;\
	fi

${OBJECTDIR}/engine/evaluator/Evaluator_nomain.o: ${OBJECTDIR}/engine/evaluator/Evaluator.o engine/evaluator/Evaluator.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/evaluator
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/evaluator/Evaluator.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/evaluator/Evaluator_nomain.o engine/evaluator/Evaluator.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/evaluator/Evaluator.o ${OBJECTDIR}/engine/evaluator/Evaluator_nomain.o;\
	fi

${OBJECTDIR}/engine/io/Utils_nomain.o: ${OBJECTDIR}/engine/io/Utils.o engine/io/Utils.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/io/Utils.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/Utils_nomain.o engine/io/Utils.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/io/Utils.o ${OBJECTDIR}/engine/io/Utils_nomain.o;\
	fi

${OBJECTDIR}/engine/io/XHSTTExporter_nomain.o: ${OBJECTDIR}/engine/io/XHSTTExporter.o engine/io/XHSTTExporter.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/io/XHSTTExporter.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/XHSTTExporter_nomain.o engine/io/XHSTTExporter.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/io/XHSTTExporter.o ${OBJECTDIR}/engine/io/XHSTTExporter_nomain.o;\
	fi

${OBJECTDIR}/engine/io/XHSTTImporter_nomain.o: ${OBJECTDIR}/engine/io/XHSTTImporter.o engine/io/XHSTTImporter.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/io
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/io/XHSTTImporter.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/io/XHSTTImporter_nomain.o engine/io/XHSTTImporter.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/io/XHSTTImporter.o ${OBJECTDIR}/engine/io/XHSTTImporter_nomain.o;\
	fi

${OBJECTDIR}/engine/model/Schedule_nomain.o: ${OBJECTDIR}/engine/model/Schedule.o engine/model/Schedule.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/Schedule.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/Schedule_nomain.o engine/model/Schedule.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/Schedule.o ${OBJECTDIR}/engine/model/Schedule_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o engine/model/constraints/AssignResourceConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint_nomain.o engine/model/constraints/AssignResourceConstraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint.o ${OBJECTDIR}/engine/model/constraints/AssignResourceConstraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o engine/model/constraints/AssignTimeConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint_nomain.o engine/model/constraints/AssignTimeConstraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint.o ${OBJECTDIR}/engine/model/constraints/AssignTimeConstraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o engine/model/constraints/AvoidClashesConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint_nomain.o engine/model/constraints/AvoidClashesConstraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint.o ${OBJECTDIR}/engine/model/constraints/AvoidClashesConstraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/Constraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/Constraint.o engine/model/constraints/Constraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/Constraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/Constraint_nomain.o engine/model/constraints/Constraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/Constraint.o ${OBJECTDIR}/engine/model/constraints/Constraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o engine/model/constraints/EventGroupsBasedContraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint_nomain.o engine/model/constraints/EventGroupsBasedContraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint.o ${OBJECTDIR}/engine/model/constraints/EventGroupsBasedContraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o engine/model/constraints/PreferResourcesConstraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint_nomain.o engine/model/constraints/PreferResourcesConstraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint.o ${OBJECTDIR}/engine/model/constraints/PreferResourcesConstraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint_nomain.o: ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o engine/model/constraints/ResourceGroupsBasedContraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint_nomain.o engine/model/constraints/ResourceGroupsBasedContraint.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint.o ${OBJECTDIR}/engine/model/constraints/ResourceGroupsBasedContraint_nomain.o;\
	fi

${OBJECTDIR}/engine/model/events/Course_nomain.o: ${OBJECTDIR}/engine/model/events/Course.o engine/model/events/Course.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/events/Course.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/Course_nomain.o engine/model/events/Course.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/events/Course.o ${OBJECTDIR}/engine/model/events/Course_nomain.o;\
	fi

${OBJECTDIR}/engine/model/events/Event_nomain.o: ${OBJECTDIR}/engine/model/events/Event.o engine/model/events/Event.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/events/Event.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/Event_nomain.o engine/model/events/Event.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/events/Event.o ${OBJECTDIR}/engine/model/events/Event_nomain.o;\
	fi

${OBJECTDIR}/engine/model/events/EventGroup_nomain.o: ${OBJECTDIR}/engine/model/events/EventGroup.o engine/model/events/EventGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/events
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/events/EventGroup.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/events/EventGroup_nomain.o engine/model/events/EventGroup.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/events/EventGroup.o ${OBJECTDIR}/engine/model/events/EventGroup_nomain.o;\
	fi

${OBJECTDIR}/engine/model/resources/Resource_nomain.o: ${OBJECTDIR}/engine/model/resources/Resource.o engine/model/resources/Resource.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/resources/Resource.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/Resource_nomain.o engine/model/resources/Resource.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/resources/Resource.o ${OBJECTDIR}/engine/model/resources/Resource_nomain.o;\
	fi

${OBJECTDIR}/engine/model/resources/ResourceGroup_nomain.o: ${OBJECTDIR}/engine/model/resources/ResourceGroup.o engine/model/resources/ResourceGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/resources/ResourceGroup.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/ResourceGroup_nomain.o engine/model/resources/ResourceGroup.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/resources/ResourceGroup.o ${OBJECTDIR}/engine/model/resources/ResourceGroup_nomain.o;\
	fi

${OBJECTDIR}/engine/model/resources/ResourceType_nomain.o: ${OBJECTDIR}/engine/model/resources/ResourceType.o engine/model/resources/ResourceType.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/resources/ResourceType.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/ResourceType_nomain.o engine/model/resources/ResourceType.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/resources/ResourceType.o ${OBJECTDIR}/engine/model/resources/ResourceType_nomain.o;\
	fi

${OBJECTDIR}/engine/model/resources/Role_nomain.o: ${OBJECTDIR}/engine/model/resources/Role.o engine/model/resources/Role.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/resources
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/resources/Role.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/resources/Role_nomain.o engine/model/resources/Role.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/resources/Role.o ${OBJECTDIR}/engine/model/resources/Role_nomain.o;\
	fi

${OBJECTDIR}/engine/model/solutions/SolEvent_nomain.o: ${OBJECTDIR}/engine/model/solutions/SolEvent.o engine/model/solutions/SolEvent.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/solutions
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/solutions/SolEvent.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/solutions/SolEvent_nomain.o engine/model/solutions/SolEvent.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/solutions/SolEvent.o ${OBJECTDIR}/engine/model/solutions/SolEvent_nomain.o;\
	fi

${OBJECTDIR}/engine/model/solutions/Solution_nomain.o: ${OBJECTDIR}/engine/model/solutions/Solution.o engine/model/solutions/Solution.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/solutions
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/solutions/Solution.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/solutions/Solution_nomain.o engine/model/solutions/Solution.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/solutions/Solution.o ${OBJECTDIR}/engine/model/solutions/Solution_nomain.o;\
	fi

${OBJECTDIR}/engine/model/times/Day_nomain.o: ${OBJECTDIR}/engine/model/times/Day.o engine/model/times/Day.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/times/Day.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Day_nomain.o engine/model/times/Day.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/times/Day.o ${OBJECTDIR}/engine/model/times/Day_nomain.o;\
	fi

${OBJECTDIR}/engine/model/times/Time_nomain.o: ${OBJECTDIR}/engine/model/times/Time.o engine/model/times/Time.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/times/Time.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Time_nomain.o engine/model/times/Time.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/times/Time.o ${OBJECTDIR}/engine/model/times/Time_nomain.o;\
	fi

${OBJECTDIR}/engine/model/times/TimeGroup_nomain.o: ${OBJECTDIR}/engine/model/times/TimeGroup.o engine/model/times/TimeGroup.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/times/TimeGroup.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/TimeGroup_nomain.o engine/model/times/TimeGroup.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/times/TimeGroup.o ${OBJECTDIR}/engine/model/times/TimeGroup_nomain.o;\
	fi

${OBJECTDIR}/engine/model/times/Week_nomain.o: ${OBJECTDIR}/engine/model/times/Week.o engine/model/times/Week.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/times
	@NMOUTPUT=`${NM} ${OBJECTDIR}/engine/model/times/Week.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/times/Week_nomain.o engine/model/times/Week.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/engine/model/times/Week.o ${OBJECTDIR}/engine/model/times/Week_nomain.o;\
	fi

${OBJECTDIR}/lib/tinyxml2/tinyxml2_nomain.o: ${OBJECTDIR}/lib/tinyxml2/tinyxml2.o lib/tinyxml2/tinyxml2.cpp 
	${MKDIR} -p ${OBJECTDIR}/lib/tinyxml2
	@NMOUTPUT=`${NM} ${OBJECTDIR}/lib/tinyxml2/tinyxml2.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/lib/tinyxml2/tinyxml2_nomain.o lib/tinyxml2/tinyxml2.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/lib/tinyxml2/tinyxml2.o ${OBJECTDIR}/lib/tinyxml2/tinyxml2_nomain.o;\
	fi

${OBJECTDIR}/main_nomain.o: ${OBJECTDIR}/main.o main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main_nomain.o main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/main.o ${OBJECTDIR}/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	    ${TESTDIR}/TestFiles/f2 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/hsttscheduler

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
