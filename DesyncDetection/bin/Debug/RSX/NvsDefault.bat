::==============================================================================
:: DESCRIPTION: This command is used to do a default programming of the NVS / EEPROM in the DUT. Two cfm messages are sent back to the PC as response to this command. The first with Status == RSS_PENDING is sent when the default programming is started and the second with Status=RSS_SUCCESS is sent when the default programming has finished.
::
:: COMMAND LINE: NvsDefault.bat [PtMail options] <FactoryDefault> 
::
:: PARAMETERS:
::   rsbool FactoryDefault - TRUE(1) defaults the adjustment parameters (factory settings); FALSE(0): preserves the adjustment parameters.
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_PENDING(0x11) followed by RSS_SUCCESS(0x00) if the command succeeded or RSS_'error'(>0) if the command failed.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat NvsDefault %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% NvsDefault %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
