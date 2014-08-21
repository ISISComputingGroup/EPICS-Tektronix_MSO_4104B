#!../../bin/windows-x64/Tektronix_MSO_4104B

## You may have to change Tektronix_MSO_4104B to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))TEKMSO4104B"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/../../Tektronix_MSO_4104BSup"
epicsEnvSet "EPICS_CA_MAX_ARRAY_BYTES" "100000"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/Tektronix_MSO_4104B.dbd"
Tektronix_MSO_4104B_registerRecordDeviceDriver pdbbase

#drvAsynIPPortConfigure ("IP", "130.246.50.156:4000")
<<<<<<< .mine
vxi11Configure("IP", "130.246.49.179", 0, 0.0,"inst0", 0, 0)
=======
vxi11Configure("IP", "130.246.50.172", 0, 0.0,"inst0", 0, 0)
>>>>>>> .r962

## Load record instances
dbLoadRecords("$(TOP)/../../db/devTektronix_MSO_4104B.db","P=$(IOCNAME), PORT=IP")
#dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=dpk62Host"
