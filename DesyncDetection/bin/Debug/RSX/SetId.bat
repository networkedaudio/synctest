::==============================================================================
:: DESCRIPTION: This command is used to set the RFPI of a base or IPEI of a handset.
::
:: COMMAND LINE: SetId.bat [PtMail options] <Id[5]> 
::
:: PARAMETERS:
::   rsuint8 Id[5] - The RFPI/IPEI.
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetId %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetId %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
