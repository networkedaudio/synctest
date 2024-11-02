::==============================================================================
:: DESCRIPTION: Get an RF patch from NVS. The patch may not be active
::
:: COMMAND LINE: GetRfPatch.bat [PtMail options] <PatchNumber> 
::
:: PARAMETERS:
::   rsuint8 PatchNumber - Patch index. Index of the NVS location storing the RF patch
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::   rsuint8 ParameterNumber - RF parameter index. Index into the RF parameter definition table (corresponding to nn in DEFAULT_RF_PARAMETER_nn) of the RF parameter to patch.
::   rsuint8 PatchRegNo - The RF register to patch. Usually the same register as in the original RF parameter definition table
::   rsuint16 PatchRegVal - New value for the RF register
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetRfPatch %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetRfPatch %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
