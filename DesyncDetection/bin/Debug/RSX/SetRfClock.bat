::==============================================================================
:: DESCRIPTION: This command is used to enable or disable the RF clock inntest mode. Test mode is exited if RfClockEnabled = FALSE
::
:: COMMAND LINE: SetRfClock.bat [PtMail options] <RfClockEnabled> 
::
:: PARAMETERS:
::   rsbool RfClockEnabled - TRUE (1): the RF clock is enabled; FALSE (0): the RF clock is disabled.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetRfClock %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetRfClock %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
