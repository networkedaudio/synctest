::==============================================================================
:: DESCRIPTION: This command is used to switch a LED on/off.
::
:: COMMAND LINE: SetLed.bat [PtMail options] <Command> <LedId> 
::
:: PARAMETERS:
::   PtLedCmdType Command - The LED command.
::   rsuint8 LedId - The id of the LED (project specific).
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetLed %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetLed %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
