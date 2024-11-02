::==============================================================================
:: DESCRIPTION: This command is used to get the current DECT mode of the device.
::
:: COMMAND LINE: GetDectMode.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   PtDectModeType DectMode - The current dect mode.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetDectMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetDectMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
