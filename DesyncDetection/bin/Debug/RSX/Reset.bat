::==============================================================================
:: DESCRIPTION: Used to request the DUT to reset. The DUT waits for the EE write cache to become empty before it resets.
::
:: COMMAND LINE: Reset.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS: none
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat Reset %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% Reset %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
