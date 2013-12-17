TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = Tektronix_MSO_4104B
# Tektronix_MSO_4104B.dbd will be created and installed
DBD += Tektronix_MSO_4104B.dbd

# Tektronix_MSO_4104B.dbd will be made up from these files:
Tektronix_MSO_4104B_DBD += base.dbd

# Include dbd files from all support applications:
Tektronix_MSO_4104B_DBD += stream.dbd
Tektronix_MSO_4104B_DBD += asyn.dbd
Tektronix_MSO_4104B_DBD += drvAsynSerialPort.dbd
Tektronix_MSO_4104B_DBD += drvAsynIPPort.dbd
Tektronix_MSO_4104B_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
Tektronix_MSO_4104B_LIBS += stream pcre
Tektronix_MSO_4104B_LIBS += asyn devIocStats

# Tektronix_MSO_4104B_registerRecordDeviceDriver.cpp derives from Tektronix_MSO_4104B.dbd
Tektronix_MSO_4104B_SRCS += Tektronix_MSO_4104B_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
Tektronix_MSO_4104B_SRCS_DEFAULT += Tektronix_MSO_4104BMain.cpp
Tektronix_MSO_4104B_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#Tektronix_MSO_4104B_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
Tektronix_MSO_4104B_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

