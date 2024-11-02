::==============================================================================
:: DESCRIPTION: This command is used to get the current state of the write cache in the EEPROM driver.
::
:: COMMAND LINE: GetEeCacheState.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsbool CacheEmpty - TRUE(1): The cache is empty; FALSE(0): the cache is not empty.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetEeCacheState %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetEeCacheState %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
