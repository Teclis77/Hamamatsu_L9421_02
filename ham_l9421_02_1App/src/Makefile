# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ham_l9421_02_1
# ham_l9421_02_1.dbd will be created and installed
DBD += ham_l9421_02_1.dbd

# ham_l9421_02_1.dbd will be made up from these files:
ham_l9421_02_1_DBD += base.dbd

# Include dbd files from all support applications:
#ham_l9421_02_1_DBD += xxx.dbd
ham_l9421_02_1_DBD += stream-base.dbd
ham_l9421_02_1_DBD += drvAsynIPPort.dbd
ham_l9421_02_1_DBD += asyn.dbd

# Add all the support libraries needed by this IOC
ham_l9421_02_1_LIBS += stream
ham_l9421_02_1_LIBS += asyn

# ham_l9421_02_1_registerRecordDeviceDriver.cpp derives from ham_l9421_02_1.dbd
ham_l9421_02_1_SRCS += ham_l9421_02_1_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ham_l9421_02_1_SRCS_DEFAULT += ham_l9421_02_1Main.cpp
ham_l9421_02_1_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ham_l9421_02_1_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ham_l9421_02_1_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

