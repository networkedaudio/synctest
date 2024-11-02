::==============================================================================
:: DESCRIPTION: This command is used for getting the MAC address
::
:: COMMAND LINE: GetMacAddr.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::   rsuint8 Mac[6] - Mac address
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetMacAddr %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetMacAddr %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
