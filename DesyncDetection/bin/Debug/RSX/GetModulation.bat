::==============================================================================
:: DESCRIPTION: This command is used to read the TX modulation stored in the NVS.
::
:: COMMAND LINE: GetModulation.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Modulation - The modulation.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetModulation %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetModulation %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
