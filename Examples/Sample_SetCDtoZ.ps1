# Sets the CD drive letter to Z:
Configuration Sample_SetCDtoZ
{   
    Import-DscResource -module cCDROMdriveletter

    Node localhost {

        cCDROMdriveletter cdrom
        {
            DriveLetter = "Z:"
            Ensure      = "Present"
        }
    }
}

# Creates a mof and applies the resource
$DscDir = "C:\DSC\cCDROMdriveletter"
New-Item $DscDir -ItemType Directory 
Sample_SetCDtoZ -OutputPath $DscDir
Start-DscConfiguration -Path $DscDir -Wait -Force -Verbose