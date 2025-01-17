::==============================================================================
:: DESCRIPTION: This command is used to set the DUT in burst TX mode on the channel and antenna specified (OBS. Only working for a single radio).
::
:: COMMAND LINE: SetAdvBurstMode.bat [PtMail options] <Freq> <Antenna> [<Mode>] [<SlotLength>] [<Data>] [<ActiveSlots>] [<Radio>] 
::
:: PARAMETERS:
::   rsuint8 Freq - The frequency to transmit on.
::   PtBurstModeAntType Antenna - The antenna to transmit on.
::   PtBurstModeType Mode - Burst mode type
::   PtBurstSlotLengthType SlotLength - Length of the burst slot
::   PtBurstDataType Data - A and B field content
::   PtBurstActiveSlotsType ActiveSlots - Select which slots to burst on
::   rsuint8 Radio - Select radio (NOT USED)
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
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat SetAdvBurstMode %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% SetAdvBurstMode %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
