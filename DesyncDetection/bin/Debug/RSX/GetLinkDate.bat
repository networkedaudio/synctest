::==============================================================================
:: DESCRIPTION: This command is used to request the SW link date and time.
::
:: COMMAND LINE: GetLinkDate.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 Year - BCD coded: [0;99] (2000-2099).
::   rsuint8 Month - BCD coded [1;12] (jan-dec).
::   rsuint8 Day - BCD coded: day of month [1;31]
::   rsuint8 Hour - BCD coded: [0:23]
::   rsuint8 Minute - BCD coded: [0:59]
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetLinkDate %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetLinkDate %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
