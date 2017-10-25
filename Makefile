###############################################################################
# Author: Sean Foster         																			<Makefile>
# Date: 09/21/2017
# Description: Makefile for Project 02: Zoo Tycoon
###############################################################################
CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
CXXFLAGS += -g
LDFLAGS = -lGL
LDFLAGS += -lGLU
LDFLAGS += -lglfw
LDFLAGS += -lX11 
LDFLAGS += -lXxf86vm 
LDFLAGS += -lXrandr 
LDFLAGS += -lpthread 
LDFLAGS += -lXi

OBJS =  opngl.o

SRCS = opngl.cpp

HEADERS = 

#target: dependencies
#		rule to build

opgl: ${OBJS} ${HEADERS}
	${CXX} ${OBJS} ${LDFLAGS} -o opgl

${OBJS}: ${SRCS}
	${CXX} ${CXXFLAGS} -c $(@:.o=.cpp)

clean:
	rm *.o opgl