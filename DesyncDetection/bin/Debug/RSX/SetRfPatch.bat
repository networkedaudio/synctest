::==============================================================================
:: DESCRIPTION: Write an RF patch into NVS. Note that for the RF patch to be active, the RF patch length must also be set.
::
:: COMMAND LINE: SetRfPatch.bat [PtMail options] <PatchNumber> <ParameterNumber> <PatchRegNo> <PatchRegVal> 
::
:: PARAMETERS:
::   rsuint8 PatchNumber - Patch index. Index of the NVS location storing the RF patch
::   rsuint8 ParameterNumber - RF parameter index. Index into the RF parameter definition table (corresponding to nn in DEFAULT_RF_PARAMETER_nn) of the RF parameter to patch.
::   rsuint8 PatchRegNo - The RF register to patch. Usually the same register as in the original RF parameter definition table
::   rsuint16 PatchRegVal - New value for the RF register
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetRfPatch %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetRfPatch %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
