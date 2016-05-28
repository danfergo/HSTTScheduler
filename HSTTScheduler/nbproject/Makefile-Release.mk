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
	${OBJECTDIR}/engine/io/XHSTTExporter.o \
	${OBJECTDIR}/engine/io/XHSTTImporter.o \
	${OBJECTDIR}/engine/model/Schedule.o \
	${OBJECTDIR}/engine/model/constraints/Constraint.o \
	${OBJECTDIR}/engine/model/events/Course.o \
	${OBJECTDIR}/engine/model/events/Event.o \
	${OBJECTDIR}/engine/model/events/EventGroup.o \
	${OBJECTDIR}/engine/model/resources/Resource.o \
	${OBJECTDIR}/engine/model/resources/ResourceGroup.o \
	${OBJECTDIR}/engine/model/resources/ResourceType.o \
	${OBJECTDIR}/engine/model/solutions/SolEvent.o \
	${OBJECTDIR}/engine/model/solutions/Solution.o \
	${OBJECTDIR}/engine/model/times/Day.o \
	${OBJECTDIR}/engine/model/times/Time.o \
	${OBJECTDIR}/engine/model/times/TimeGroup.o \
	${OBJECTDIR}/engine/model/times/Week.o \
	${OBJECTDIR}/main.o


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

${OBJECTDIR}/engine/model/constraints/Constraint.o: engine/model/constraints/Constraint.cpp 
	${MKDIR} -p ${OBJECTDIR}/engine/model/constraints
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/engine/model/constraints/Constraint.o engine/model/constraints/Constraint.cpp

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

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/hsttscheduler

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
