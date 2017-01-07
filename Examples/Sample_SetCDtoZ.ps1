# Sets the CD drive letter to Z:
Configuration Sample_SetCDtoZ
{   
    Import-DscResource -module cCDROMdriveletter
    
    cCDROMdriveletter cdrom
    {
        DriveLetter = "Z:"
        Ensure      = "Present"
    }
}