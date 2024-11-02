::==============================================================================
:: DESCRIPTION: This command is used to set the DUT in single slot burst TX mode on the channel and antenna specified.
::
:: COMMAND LINE: SetBurstMode.bat [PtMail options] <Channel> <Antenna> 
::
:: PARAMETERS:
::   rsuint8 Channel - The channel to transmit on.
::   rsuint8 Antenna - The antenna to transmit on (Adding 0x50 will select the other radio).
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetBurstMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetBurstMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
