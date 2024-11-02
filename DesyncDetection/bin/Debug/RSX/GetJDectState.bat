::==============================================================================
:: DESCRIPTION: Get JDect number of active channels
::
:: COMMAND LINE: GetJDectState.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint8 JDectActiveChannels - Number of active channels for JDect. 0 means JDect not active, otherwise 2 or 5 will be returned
::   rsbool JDect5chSupport - TRUE if the product supports 5 ch Japan DECT.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetJDectState %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetJDectState %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
