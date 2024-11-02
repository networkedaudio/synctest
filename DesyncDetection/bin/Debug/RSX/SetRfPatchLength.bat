::==============================================================================
:: DESCRIPTION: Set the number of activated RF patches.
::
:: COMMAND LINE: SetRfPatchLength.bat [PtMail options] <PatchLength> 
::
:: PARAMETERS:
::   rsuint8 PatchLength - Number of activated RF pathces
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetRfPatchLength %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetRfPatchLength %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
