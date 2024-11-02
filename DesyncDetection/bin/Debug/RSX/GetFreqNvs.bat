::==============================================================================
:: DESCRIPTION: This command is used to get clock frequency setting stored in the NVS.
::
:: COMMAND LINE: GetFreqNvs.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   rsuint16 Frequency - The clock frequency setting read from the NVS. Please note that some devices return one byte only. Two bytes are used on SC14480, SC1444x and newer generation Dialog chips.
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetFreqNvs %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetFreqNvs %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
