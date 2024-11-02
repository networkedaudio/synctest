::==============================================================================
:: DESCRIPTION: This command is used to set the clock frequency in the NVS and adjust the clock in the SC144xx
::
:: COMMAND LINE: SetFreq.bat [PtMail options] <Frequency> 
::
:: PARAMETERS:
::   rsuint16 Frequency - The new clock frequency setting. 16 bits are used for SC14480, SC1444x and newer generation Dialog chips. 8 bits are used only for older Dialog chips.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetFreq %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetFreq %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
