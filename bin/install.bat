copy "%~dp0vmloader.sys" "C:\vmloader.sys"
sc create vmloader binPath= "\??\c:\vmloader.sys" type= "kernel" start= "system"
sc start vmloader
reg delete "HKLM\HARDWARE\ACPI\DSDT\PTLTD_" /f
