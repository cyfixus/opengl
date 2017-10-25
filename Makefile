###############################################################################
# Author: Sean Foster         																			<Makefile>
# Date: 10/23/2017
# Description: Makefile for openGL
###############################################################################
CXX = g++
CXXFLAGS = -std=c++0x
CXXFLAGS += -Wall
CXXFLAGS += -pedantic-errors
CXXFLAGS += -g
LDFLAGS = -lGL
LDFLAGS += -lGLU
LDFLAGS += -lGLEW
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