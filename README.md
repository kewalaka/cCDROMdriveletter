[![Build status](https://ci.appveyor.com/api/projects/status/7mccrx1uwn4gnuhp/branch/master?svg=true)](https://ci.appveyor.com/project/kewalaka/ccdromdriveletter)

# cCDROMdriveletter

This is a simple custom DSC resource that sets the drive letter of the first cdrom drive.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Resources

* **cCDRomdriveletter** Sets the drive letter for a cdrom.

#### Requirements

Only supports Windows OS, with a single cdrom drive.  Works with PowerShell v4 and above, requires WinRM.

This module will ignore cdrom devices that are auto-created when mounted ISO images within the OS.

#### Parameters

* **[String] DriveLetter** _(Key)_: The drive letter that should be applied to the cdrom drive.
* **[String] Ensure** _(Write)_: If set to Present, the resource will attempt to set the cdrom drive letter.  Absent is ignored.  The default value is Present. { *Present* | Absent }.

#### Examples

```
# Sets the CD drive letter to Z: on the localhost 
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
```

## Versions

### v1.1.0

 * Expanded sample to make it self contained
 * Added description to module manifest
 
### v1.0.0

* Initial release with the following resources:
  * cCDRomdriveletter
* Passes PSScriptAnalyser build checks (using Appveyor)

