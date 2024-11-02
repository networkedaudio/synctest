::==============================================================================
:: DESCRIPTION: This command is used to get the RFPI of a base or IPEI of a handset.
::
:: COMMAND LINE: GetId.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Id[5] - The RFPI/IPEI.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetId %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetId %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
