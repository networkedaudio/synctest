::==============================================================================
:: DESCRIPTION: Set JDect number of active channels. 5 channel mode can always be selected and will not perform PHS scanning. Will return RSS_NO_CAPABILITY if the FP is not configured for Japan DECT mode (use SetDectMode).
::
:: COMMAND LINE: SetJDectState.bat [PtMail options] <JDectActiveChannels> 
::
:: PARAMETERS:
::   rsuint8 JDectActiveChannels - Active channels: 2 or 5
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetJDectState %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetJDectState %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
