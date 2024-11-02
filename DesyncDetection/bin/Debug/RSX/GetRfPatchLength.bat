::==============================================================================
:: DESCRIPTION: Get the number of activated RF patches.
::
:: COMMAND LINE: GetRfPatchLength.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 PatchLength - Number of activated RF pathces
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetRfPatchLength %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetRfPatchLength %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
