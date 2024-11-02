::==============================================================================
:: DESCRIPTION: This command is used to set the DECT mode of the device.
::
:: COMMAND LINE: SetDectMode.bat [PtMail options] <DectMode> 
::
:: PARAMETERS:
::   PtDectModeType DectMode - The dect mode.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetDectMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetDectMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
