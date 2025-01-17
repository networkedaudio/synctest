::==============================================================================
:: DESCRIPTION: This command is used to set/adjust the band gap in the SC144xx and store it in the EEPROM.
::
:: COMMAND LINE: SetBandGap.bat [PtMail options] <BandGap> 
::
:: PARAMETERS:
::   rsuint8 BandGap - The new band gap value.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetBandGap %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetBandGap %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
