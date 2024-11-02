::==============================================================================
:: DESCRIPTION: This command is used to set the DUT in continuous RX mode on the channel specified.
::
:: COMMAND LINE: SetContRx.bat [PtMail options] <Channel> [<Antenna>] [<Radio>] 
::
:: PARAMETERS:
::   rsuint8 Channel - The channel to receive on.
::   rsuint8 Antenna - The antenna to receive on. 0 for default value usually from NVS DiversityMode. 1 for antenna 1, etc. For PP this argument is currently ignored.
::   rsuint8 Radio - The radio to receive on. Ignored on blind slot projects. 0/1 on zero-blind slot projects
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetContRx %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetContRx %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
