::==============================================================================
:: DESCRIPTION: This command is used to retrieve the current user power level.
::
:: COMMAND LINE: GetUserPower.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   PtPowerLevel PowerLevel - Returns the current user power level. 0: Max, 1: Mid, 2: Low.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetUserPower %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetUserPower %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
