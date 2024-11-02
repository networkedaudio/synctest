::==============================================================================
:: DESCRIPTION: This command is used to read the SW version number.
::
:: COMMAND LINE: GetVersion.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint16 Version - The version number (BCD coded). E.g. 0x1234 = v1234 (version 12.34).
::   rsuint16 SubVersion - Sub version / branch number (BCD coded).
::   rsuint16 Build - Build number.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetVersion %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetVersion %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
