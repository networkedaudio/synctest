::==============================================================================
:: DESCRIPTION: This command is used to read the PCB hardware version from NVS.
::
:: COMMAND LINE: GetHwVersion.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Version - Returns current PCB hardware version from NVS.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetHwVersion %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetHwVersion %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
