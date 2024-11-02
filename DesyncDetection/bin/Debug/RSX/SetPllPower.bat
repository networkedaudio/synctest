::==============================================================================
:: DESCRIPTION: This command is used for setting the PLL power mode
::
:: COMMAND LINE: SetPllPower.bat [PtMail options] <On> 
::
:: PARAMETERS:
::   rsuint8 On - On off setting
::
:: RETURNS:
::   rsuint8 Id - Chip ID
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetPllPower %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetPllPower %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
