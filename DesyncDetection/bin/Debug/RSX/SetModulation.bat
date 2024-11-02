::==============================================================================
:: DESCRIPTION: This command is used to set the TX modulation.
::
:: COMMAND LINE: SetModulation.bat [PtMail options] [<Modulation>] 
::
:: PARAMETERS:
::   rsuint8 Modulation - The modulation.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetModulation %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetModulation %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
