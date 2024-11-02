::==============================================================================
:: DESCRIPTION: This command is used for getting current HDLC link status
::
:: COMMAND LINE: GetDectSyncStatus.bat [PtMail options] 
::
:: PARAMETERS: none
::
:: RETURNS:
::   RsStatusType Status - Returns RSS_SUCCESS(0) if the command succeeded or RSS_'error'(>0) if the command failed.
::   rsbool DectSyncPresent - 1 = DECT sync present
::   rsuint16 PhaseOffset - Phase between Dect Sync and CLK100
::   rsuint16 PhaseClk100 - Phase offset between Dect Sync and RF CLK
::   PtDectSyncLockState LockState - Dect sync lock state
::
:: - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
:: Copyright (C) by RTX TELECOM A/S, Denmark.                                   
:: These computer program listings and specifications, are the property of      
:: RTX TELECOM A/S, Denmark and shall not be reproduced or copied or used in    
:: whole or in part without written permission from RTX TELECOM A/S, Denmark.   
::==============================================================================
@if exist SetPtMailOptions.bat call SetPtMailOptions.bat GetDectSyncStatus %*
@if [%PTMAIL%]==[] set PTMAIL=.\PtMail.exe
@%PTMAIL% GetDectSyncStatus %PTMAILOPTIONS% %*
@SET PTMAIL=
@set PTMAILOPTIONS=
