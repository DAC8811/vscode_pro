

#源文件，自动找所有.c和.cpp文件，并将目标定义为同名.o文件
#CSRCS用于添加子0文件夹内的源文件
LOCAL_DIR = ${shell pwd}
#CSRCS += $(LOCAL_DIR)/vector/vector.cpp     #这样添加比较方便，但是生成的.o文件将会是在子文件夹内部，make clean无法清除
include $(LOCAL_DIR)/vector/vector.mk #这样添加的是子文件夹中的makefile文件，生成的.o文件位于主文件夹中，make clean可以清除

SOURCE  := $(wildcard *.c) $(wildcard *.cpp) $(CSRCS)
OBJS    := $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))

#目标文件名，输入任意你想要的执行文件名

TARGET  := main

#编译参数

CC      := g++
LIBS    :=
LDFLAGS :=
DEFINES :=
INCLUDE := -I.
CFLAGS  := -g -Wall -std=c++11 -O3 $(DEFINES) $(INCLUDE)
CXXFLAGS:= $(CFLAGS) -DHAVE_CONFIG_H




#下面的基本上不需要做任何改动了

.PHONY : everything objs clean veryclean rebuild

everything : $(TARGET)

all : $(TARGET)

objs : $(OBJS)

rebuild: veryclean everything

clean :
	rm -fr *.so
	rm -fr *.o

veryclean : clean
	rm -fr $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(CXXFLAGS) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)