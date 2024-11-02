::==============================================================================
:: DESCRIPTION: This command is used to request a new user power level. The functionality is not guaranteed to work without restart.
::
:: COMMAND LINE: SetUserPower.bat [PtMail options] <PowerLevel> 
::
:: PARAMETERS:
::   PtPowerLevel PowerLevel - User power level to request. 0: Max, 1: Mid, 2: Low.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetUserPower %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetUserPower %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
