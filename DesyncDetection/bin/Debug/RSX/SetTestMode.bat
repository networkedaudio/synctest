::==============================================================================
:: DESCRIPTION: This command is used to request the DUT to enter or exit DECT test mode. The DUT will do a warm start after this command has been handled.
::
:: COMMAND LINE: SetTestMode.bat [PtMail options] <TestMode> 
::
:: PARAMETERS:
::   rsbool TestMode - Mode = 0(FALSE): Normal mode; Mode > 0 (TRUE): Test mode enabled. On PP's the mode is also used to set the test carrier used. [0x01-0x09] uses dummy RFPI [00 00 00 00 10; 00 00 00 00 90]. 0x0F uses the LockToFp parameter in the EEPROM.
::
:: RETURNS: none
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetTestMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetTestMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
