COSONIC := 1
COSONIC_LOG := 1
COSONIC_DEBUG := 1
CSD := 1
CSD_PWRON := 1
CSD_RECONNECT := 1

ifeq ($(COSONIC),1)
KBUILD_CPPFLAGS += -DCOSONIC
KBUILD_CFLAGS += -DCOSONIC

ifeq ($(COSONIC_LOG),1)
KBUILD_CPPFLAGS += -DCOSONIC_LOG
KBUILD_CFLAGS += -DCOSONIC_LOG
endif
ifeq ($(COSONIC_DEBUG),1)
KBUILD_CPPFLAGS += -DCOSONIC_DEBUG
KBUILD_CFLAGS += -DCOSONIC_DEBUG
endif
endif

ifeq ($(CSD),1)
KBUILD_CPPFLAGS += -DCSD
KBUILD_CFLAGS += -DCSD

ifeq ($(CSD_PWRON),1)
KBUILD_CPPFLAGS += -DCSD_PWRON
KBUILD_CFLAGS += -DCSD_PWRON
endif

ifeq ($(CSD_RECONNECT),1)
KBUILD_CPPFLAGS += -DCSD_RECONNECT
KBUILD_CFLAGS += -DCSD_RECONNECT
endif
endif