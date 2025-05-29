#!../../bin/linux-x86_64/ham_l9421_02_1

#- SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change ham_l9421_02_1 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

epicsEnvSet ("STREAM_PROTOCOL_PATH", "${TOP}/db")
epicsEnvSet ("PORT_HAMA", "serial_hama")

## Register all support components
dbLoadDatabase "dbd/ham_l9421_02_1.dbd"
ham_l9421_02_1_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure($(PORT_HAMA), "100.100.0.11:4002")
asynOctetSetInputEos($(PORT_HAMA),0,"\n")
asynOctetSetOutputEos($(PORT_HAMA),0,"\n")

asynSetTraceMask($(PORT_HAMA),-1,0x9);
asynSetTraceIOMask($(PORT_HAMA),-1,0x2)


## Load record instances
#dbLoadRecords("db/ham_l9421_02_1.db","user=xlabsrv2")
dbLoadRecords("db/ham_l9421_02.db", "ASYNPORT=$(PORT_HAMA), XSOURCE=hama_l9421_02_1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=xlabsrv2"
