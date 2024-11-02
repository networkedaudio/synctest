::==============================================================================
:: DESCRIPTION: This command is used to set the DiversityMode temporarily in the RAM (EEPROM in RAM).
::
:: COMMAND LINE: SetDiversityMode.bat [PtMail options] <DiversityMode> 
::
:: PARAMETERS:
::   PtDiversityModeType DiversityMode - The Diversity mode.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetDiversityMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetDiversityMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
