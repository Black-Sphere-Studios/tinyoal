TARGET := 03Properties
SRCDIR := examples/03Properties
BUILDDIR := examples/bin
OBJDIR := examples/bin/obj
C_SRCS := $(wildcard $(SRCDIR)/*.c)
CXX_SRCS := $(wildcard $(SRCDIR)/*.cpp)
INCLUDE_DIRS := include/tinyoal
LIBRARY_DIRS := 
LIBRARIES := dl tinyoal

CPPFLAGS += -w -std=gnu++0x
LDFLAGS += -L./bin/

include base.mk

distclean:
	@- $(RM) $(OBJS)
	@- $(RM) -r $(OBJDIR)
	@- $(RM) bin/*.txt
	@- $(RM) bin/*.ini
