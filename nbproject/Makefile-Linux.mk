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
CND_PLATFORM=GNU-MacOSX
CND_DLIB_EXT=dylib
CND_CONF=Linux
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/IORegistersMemoryRule.o \
	${OBJECTDIR}/src/main.o \
	${OBJECTDIR}/src/EightBitRegister.o \
	${OBJECTDIR}/src/Input.o \
	${OBJECTDIR}/src/MemoryRule.o \
	${OBJECTDIR}/src/MBC3MemoryRule.o \
	${OBJECTDIR}/src/Cartridge.o \
	${OBJECTDIR}/src/opcodes.o \
	${OBJECTDIR}/src/MemoryCell.o \
	${OBJECTDIR}/src/Memory.o \
	${OBJECTDIR}/src/MBC2MemoryRule.o \
	${OBJECTDIR}/src/Audio.o \
	${OBJECTDIR}/src/opcodes_cb.o \
	${OBJECTDIR}/src/Video.o \
	${OBJECTDIR}/src/RomOnlyMemoryRule.o \
	${OBJECTDIR}/src/MBC1MemoryRule.o \
	${OBJECTDIR}/src/Processor.o \
	${OBJECTDIR}/src/GearboyCore.o \
	${OBJECTDIR}/src/MBC5MemoryRule.o \
	${OBJECTDIR}/src/SixteenBitRegister.o


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
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gearboy

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gearboy: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -lfreeglut -lGL -lGLU -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gearboy ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/src/IORegistersMemoryRule.o: src/IORegistersMemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/IORegistersMemoryRule.o src/IORegistersMemoryRule.cpp

${OBJECTDIR}/src/main.o: src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/main.o src/main.cpp

${OBJECTDIR}/src/EightBitRegister.o: src/EightBitRegister.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/EightBitRegister.o src/EightBitRegister.cpp

${OBJECTDIR}/src/Input.o: src/Input.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Input.o src/Input.cpp

${OBJECTDIR}/src/MemoryRule.o: src/MemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MemoryRule.o src/MemoryRule.cpp

${OBJECTDIR}/src/MBC3MemoryRule.o: src/MBC3MemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MBC3MemoryRule.o src/MBC3MemoryRule.cpp

${OBJECTDIR}/src/Cartridge.o: src/Cartridge.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Cartridge.o src/Cartridge.cpp

${OBJECTDIR}/src/opcodes.o: src/opcodes.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/opcodes.o src/opcodes.cpp

${OBJECTDIR}/src/MemoryCell.o: src/MemoryCell.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MemoryCell.o src/MemoryCell.cpp

${OBJECTDIR}/src/Memory.o: src/Memory.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Memory.o src/Memory.cpp

${OBJECTDIR}/src/MBC2MemoryRule.o: src/MBC2MemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MBC2MemoryRule.o src/MBC2MemoryRule.cpp

${OBJECTDIR}/src/Audio.o: src/Audio.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Audio.o src/Audio.cpp

${OBJECTDIR}/src/opcodes_cb.o: src/opcodes_cb.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/opcodes_cb.o src/opcodes_cb.cpp

${OBJECTDIR}/src/Video.o: src/Video.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Video.o src/Video.cpp

${OBJECTDIR}/src/RomOnlyMemoryRule.o: src/RomOnlyMemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/RomOnlyMemoryRule.o src/RomOnlyMemoryRule.cpp

${OBJECTDIR}/src/MBC1MemoryRule.o: src/MBC1MemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MBC1MemoryRule.o src/MBC1MemoryRule.cpp

${OBJECTDIR}/src/Processor.o: src/Processor.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/Processor.o src/Processor.cpp

${OBJECTDIR}/src/GearboyCore.o: src/GearboyCore.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/GearboyCore.o src/GearboyCore.cpp

${OBJECTDIR}/src/MBC5MemoryRule.o: src/MBC5MemoryRule.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/MBC5MemoryRule.o src/MBC5MemoryRule.cpp

${OBJECTDIR}/src/SixteenBitRegister.o: src/SixteenBitRegister.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} $@.d
	$(COMPILE.cc) -O2 -MMD -MP -MF $@.d -o ${OBJECTDIR}/src/SixteenBitRegister.o src/SixteenBitRegister.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/gearboy

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc