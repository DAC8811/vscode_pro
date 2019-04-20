#位于子文件夹中的makefile类型的文件，被主文件夹中的makefile调用后将子文件夹中的源文件引用到编译中
CSRCS += vector.cpp
DEPPATH += --dep-path $(LOCAL_DIR)/vector #当前子目录
VPATH += :$(LOCAL_DIR)/vector			  #当前子目录

CFLAGS += "-I$(LOCAL_DIR)/vector"		  #当前子目录
