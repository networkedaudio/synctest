::==============================================================================
:: DESCRIPTION: This command is used to read some data form the part of the EEPROM reserved for the production.
::
:: COMMAND LINE: GetProdData.bat [PtMail options] <Length> <DataOffset> 
::
:: PARAMETERS:
::   rsuint8 Length - The number of bytes to read from the production data in the EEPROM.
::   rsuint8 DataOffset - The offset of the first byte to read from the production data in the EEPROM.
::
:: RETURNS:
::   rsuint8 Data[] - The data read from the production data in the EEPROM.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetProdData %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetProdData %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
