TARGET = camera_patch_i2cjoy
OBJS = main.o minini/minIni.o

BUILD_PRX = 1

USE_KERNEL_LIBS = 0
USE_KERNEL_LIBC = 1

INCDIR = include
MININI_DEFINES = -DNDEBUG -DINI_FILETYPE=SceUID -DINI_NOFLOAT -DPORTABLE_STRNICMP
CFLAGS = -O2 -Os -G0 -Wall -fshort-wchar -fno-pic -mno-check-zero-division $(MININI_DEFINES)
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR = 
LIBS = libs/libpspsystemctrl_user.a libs/libpspsystemctrl_kernel.a libs/libpspkubridge.a
LDFLAGS = -nostartfiles

PSPSDK = $(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build_prx.mak