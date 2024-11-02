::==============================================================================
:: DESCRIPTION: This command is used to write data to the NVS (EEPROM).
::
:: COMMAND LINE: SetNvs.bat [PtMail options] <Address> <Length> <Data[]> 
::
:: PARAMETERS:
::   rsuint32 Address - The address of the first byte to write to in the NVS.
::   rsuint8 Length - The number of bytes to write to the NVS.
::   rsuint8 Data[] - The data that should be written to the NVS.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetNvs %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetNvs %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
