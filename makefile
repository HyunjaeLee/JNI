OBJS = Hello.c Hello.h
UNAME := $(shell uname -s)
ifeq ($(UNAME), Linux)	
libHello.so : $(OBJS)
	gcc -shared -fPIC -I'/usr/lib/jvm/java-8-openjdk-amd64/include' -I'/usr/lib/jvm/java-8-openjdk-amd64/include/linux' -o $@ $<
endif
ifeq ($(UNAME), Darwin)
libHello.dylib : $(OBJS)
	gcc -dynamiclib -I/System/Library/Frameworks/JavaVM.framework/Headers -o $@ $<
endif

