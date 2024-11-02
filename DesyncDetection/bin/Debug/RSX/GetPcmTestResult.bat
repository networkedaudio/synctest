::==============================================================================
:: DESCRIPTION: This command is used to get the result from PCM loopback test.
::
:: COMMAND LINE: GetPcmTestResult.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::   rsuint8 PcmTestResult - 0 = Pcm loopback test not running. 1 = Pcm loopback test failed. 2 = Pcm loopback test passed
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetPcmTestResult %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetPcmTestResult %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
