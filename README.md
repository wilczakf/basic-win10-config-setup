# priv-win10-config-setup
Windows 10 coding environment set up

## Pre-requisites
- Create Win user without `spaces`
- Install Windows Terminal from MS Store
- Install SublimeText and let `.json` files to be openable by it
- Run commands from Windows Terminal with `run as administrator` (add privileges to `.exe` file)

## Steps
### 1. Loosen the windows installation execution policy 
> Set-ExecutionPolicy RemoteSigned

### 2. Install choco - software installation manager
> iwr -useb community.chocolatey.org/install.ps1 | iex

### 3. (Optional - install BCU - software to get rid of bulk crap from the system.)
> choco install bulk-crap-uninstaller

### 4. Install PowerShellCore and create PowerShell PROFILE file.
> choco install powershell-core
> ni -Force $PROFILE
 
### 5. Update/customize PROFILE with necessary aliases (see file).
> `<placeholder for file>`

### 6. Install and configure pyenv for windows.
> choco install pyenv-win -y <br>
> pyenv update <br>
> pyenv install --quiet `place.python.version.1` `place.python.version.2` `place.python.version.n`<br>
> pyenv global `eg.3.10.5`

### 7. Install and configure git
> choco install git <br>
> refreshenv <br>
> git config --global user.name "Filip Wilczak" <br>
> git config --global user.email majinvlq@gmail.com <br>

Create ssh-key if necessary to authenticate connection with GitHub
> ssh-keygen -C majinvlq@domain.com <br>
> cat ~/.ssh/id_rsa.pub

Then add generated ssh key into your GitHub `https://github.com/settings/keys`
