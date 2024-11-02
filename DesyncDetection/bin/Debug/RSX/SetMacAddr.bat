::==============================================================================
:: DESCRIPTION: This command is used for setting the MAC address
::
:: COMMAND LINE: SetMacAddr.bat [PtMail options] <Mac[6]> 
::
:: PARAMETERS:
::   rsuint8 Mac[6] - Mac address
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetMacAddr %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetMacAddr %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
