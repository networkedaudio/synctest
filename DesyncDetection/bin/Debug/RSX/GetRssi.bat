::==============================================================================
:: DESCRIPTION: This command is used to get the current uncompensated RSSI level on the Rx slot of the connection. If more than one connection, the RSSI of the first connection is returned.
::
:: COMMAND LINE: GetRssi.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Rssi - Uncompensated RSSI level. 0xFF is returned if no connection has been established.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetRssi %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetRssi %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
