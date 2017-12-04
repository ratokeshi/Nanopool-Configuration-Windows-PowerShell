# Nanopool-Configuration-Windows-PowerShell

## Installing
Copy ps1 to local miner
```powershell
$
```

### Usage
modify settings at top of script
```javascript
./minerlaunch.ps1
```

### Usage options
You don't need to configure hostname because this picks up the local hostname.
You can go to https://eth.nanopool.org/help#poolsettings to perform the install.
1.  If you follow the steps at https://eth.nanopool.org/help#claymore you will get the Clymore miner started.
2.  Instead of modifying the start.bat file you can run this powershell.
3.  Modify the minerlaunch.ps1 using your favorite text editor.
4.  You might modify your Group policy or local GPO to automatically run this minerlaunch.ps1

### Future possibilities:
1.  Convert to check for local or remote config if remote go to https://configmaker.com to get config options.
2.  Create script config that creates config file or pulls it from https://configmaker.com


## Update Notes
2017-12-03 21:18 - Cleaned up the script to make it easier to figure out what to customise and why.
2017-12-03 18:55 - Created doc for updating running Nanopool




## License

The MIT License (MIT)

Copyright 2017 Tokeshi.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
