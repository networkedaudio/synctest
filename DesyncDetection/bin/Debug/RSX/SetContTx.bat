::==============================================================================
:: DESCRIPTION: This command is used to set the DUT in continuous TX mode on the channel specified.
::
:: COMMAND LINE: SetContTx.bat [PtMail options] <Channel> [<Antenna>] [<Radio>] 
::
:: PARAMETERS:
::   rsuint8 Channel - The channel to transmit on.
::   rsuint8 Antenna - The antenna to transmit on. 0 for default value usually from NVS DiversityMode (set with SetDiversityMode). 1 for antenna 1, etc. For PP the argument is currently not used, NVS setting is always used.
::   rsuint8 Radio - The radio to transmit on. Ignored on blind slot projects. 0/1 on zero-blind slot projects
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetContTx %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetContTx %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
