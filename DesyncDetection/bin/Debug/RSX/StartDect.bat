::==============================================================================
:: DESCRIPTION: This command is used to start DECT using the SATURN_DECT_FP_START_REQ mail.
::
:: COMMAND LINE: StartDect.bat [PtMail options] <HlCaps[2]> <Rfpi[5]> <MaxConnections> <Antenna> <RfPower> <OperationMode> 
::
:: PARAMETERS:
::   rsuint8 HlCaps[2] - Higher layer capabilities.
::   rsuint8 Rfpi[5] - Radio fixed part identity.
::   rsuint8 MaxConnections - Maximum number of allowed connections.
::   rsuint8 Antenna - Choice of antenna. 0: Diversity
::   PtPowerLevel RfPower - RF power level.
::   PtOperationMode OperationMode - Mode of operation.
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat StartDect %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% StartDect %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
