# ISO2VHD
Creating a bootable VHD the easy way

This is slightly modified version of the script from [Creating a bootable VHD the easy way](http://www.hugohaggmark.com/2010/09/23/creating-a-bootable-vhd-the-easy-way/) that requires [7-Zip](http://7-zip.org) for ISO unpacking.

1. Open a **PowerShell** command prompt with the **run as Administrator** option. You need to run the bat-file from a **PowerShell** console as an **Administrator** and not from the usual command prompt.
2. Change directory to the directory where you put your ISO image.
3. Now you’re ready to use the ISO2VHD.bat-file like this:
  * **.\ISO2VHD.bat \<path where you like to store the VHD, doesn’t work on external drives\> \<size in MB\> \<type FIXED|EXPANDABLE\> \<drive letter assigned to the VHD _without_ semicolon\> \<path to the ISO-file\> \<VHD disk label (optional)\>.**
  * Example: 
  ```
  .\ISO2VHD.bat C:\VHD\Win7.vhd 20000 FIXED W win7_sp1_x86-x64_dvd.iso
  ```
