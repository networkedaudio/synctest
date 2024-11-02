::==============================================================================
:: DESCRIPTION: This command is used to get the current uncompensated RSSI level in continuous RX mode.
::
:: COMMAND LINE: GetRssiContRx.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Rssi - Uncompensated RSSI level.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetRssiContRx %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetRssiContRx %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
