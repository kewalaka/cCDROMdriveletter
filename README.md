# cCDROMdriveletter

TODO: AppVeyor stuff

This is a simple custom resource that sets the drive letter of the first cdrom drive.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## How to Contribute

If you would like to contribute to this repository, please read the DSC Resource Kit [contributing guidelines](https://github.com/PowerShell/DscResource.Kit/blob/master/CONTRIBUTING.md).

## Resources

* {**cCDRomdriveletter** Sets the drive letter for a cdrom.}

#### Requirements

Only supports Windows OS, with a single cdrom drive.  Works with PowerShell v4 and above.

This module will ignore cdrom devices that are auto-created when mounted ISO images within the OS.

#### Parameters

* **[String] DriveLetter** _(Key)_: The drive letter that should be applied to the cdrom drive.
* **[String] Ensure** _(Write)_: If set to Present, the resource will attempt to set the cdrom drive letter.  Absent is ignored.  The default value is Present. { *Present* | Absent }.

#### Examples

TODO:

## Versions

### Unreleased

* Initial release with the following resources:
  * cCDRomdriveletter

### {1.0.0.0}

* pending