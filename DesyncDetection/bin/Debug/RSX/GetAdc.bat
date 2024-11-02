::==============================================================================
:: DESCRIPTION: This command is used to read the ADC specified.
::
:: COMMAND LINE: GetAdc.bat [PtMail options] <AdcId> 
::
:: PARAMETERS:
::   rsuint8 AdcId - The id of the ADC to read.
::
:: RETURNS:
::   rsuint16 Value - The ADC value read.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetAdc %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetAdc %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
