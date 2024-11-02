::==============================================================================
:: DESCRIPTION: This command is used to read data from the NVS.
::
:: COMMAND LINE: GetNvs.bat [PtMail options] <Address> <Length> 
::
:: PARAMETERS:
::   rsuint32 Address - The address of the first byte to read.
::   rsuint8 Length - The number of bytes to read from the NVS.
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::   rsuint32 Address - The address of the first byte read from the NVS.
::   rsuint8 Length - The number of bytes read from the NVS.
::   rsuint8 Data[] - The data read from the NVS.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetNvs %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetNvs %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
