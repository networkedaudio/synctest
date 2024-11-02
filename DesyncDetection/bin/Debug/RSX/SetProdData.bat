::==============================================================================
:: DESCRIPTION: This command is used to write some data to the part of the EEPROM reserved for the production.
::
:: COMMAND LINE: SetProdData.bat [PtMail options] <Length> <DataOffset> <Data[]> 
::
:: PARAMETERS:
::   rsuint8 Length - The number of bytes to write to the production data in the EEPROM.
::   rsuint8 DataOffset - The offset of the first byte to read from the production data in the EEPROM.
::   rsuint8 Data[] - The data to be written to the production data in the EEPROM.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetProdData %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetProdData %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
