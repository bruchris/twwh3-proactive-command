<#
    Proactive Command - installer for Total War: WARHAMMER III

    Install.bat                       install or update (finds the game through Steam)
    Install.bat -GamePath "D:\SteamLibrary\steamapps\common\Total War WARHAMMER III"
    Uninstall.bat                     remove the mod (your config file and log are kept)
#>
param(
    [string]$GamePath,
    [switch]$Uninstall
)

$ErrorActionPreference = 'Stop'
$AppId     = '1142710'
$GameDir   = 'Total War WARHAMMER III'
$PackName  = 'proactive_command.pack'
$ThumbName = 'proactive_command.png'
$Example   = 'proactive_command_config.example.lua'
$Here      = Split-Path -Parent $MyInvocation.MyCommand.Path

function Say([string]$text, [string]$color = 'Gray') { Write-Host $text -ForegroundColor $color }

function Get-PackVersion([string]$path) {
    if (-not (Test-Path -LiteralPath $path)) { return $null }
    $text = [Text.Encoding]::ASCII.GetString([IO.File]::ReadAllBytes($path))
    $m = [regex]::Match($text, 'local VERSION = "([^"]+)"')
    if ($m.Success) { return $m.Groups[1].Value }
    return 'unknown'
}

function Test-GameFolder([string]$dir) {
    return $dir -and (Test-Path -LiteralPath (Join-Path $dir 'Warhammer3.exe')) -and
           (Test-Path -LiteralPath (Join-Path $dir 'data'))
}

function Get-SteamLibraries {
    $roots = @()
    foreach ($key in 'HKCU:\Software\Valve\Steam', 'HKLM:\SOFTWARE\WOW6432Node\Valve\Steam', 'HKLM:\SOFTWARE\Valve\Steam') {
        try {
            $p = Get-ItemProperty -Path $key -ErrorAction Stop
            foreach ($name in 'SteamPath', 'InstallPath') {
                if ($p.$name) { $roots += ($p.$name -replace '/', '\') }
            }
        } catch { }
    }
    $libs = @()
    foreach ($root in ($roots | Select-Object -Unique)) {
        $libs += $root
        $vdf = Join-Path $root 'steamapps\libraryfolders.vdf'
        if (Test-Path -LiteralPath $vdf) {
            foreach ($m in [regex]::Matches((Get-Content -LiteralPath $vdf -Raw), '"path"\s+"([^"]+)"')) {
                $libs += ($m.Groups[1].Value -replace '\\\\', '\')
            }
        }
    }
    return $libs | Select-Object -Unique
}

function Find-Game {
    foreach ($lib in Get-SteamLibraries) {
        $dir = Join-Path $lib "steamapps\common\$GameDir"
        if (Test-GameFolder $dir) { return $dir }
        $acf = Join-Path $lib "steamapps\appmanifest_$AppId.acf"
        if (Test-Path -LiteralPath $acf) {
            $m = [regex]::Match((Get-Content -LiteralPath $acf -Raw), '"installdir"\s+"([^"]+)"')
            if ($m.Success) {
                $dir = Join-Path $lib ("steamapps\common\" + $m.Groups[1].Value)
                if (Test-GameFolder $dir) { return $dir }
            }
        }
    }
    return $null
}

function Ask-ForGame {
    Say 'Could not find Total War: WARHAMMER III through Steam.' 'Yellow'
    try {
        Add-Type -AssemblyName System.Windows.Forms
        $dlg = New-Object System.Windows.Forms.FolderBrowserDialog
        $dlg.Description = 'Select the Total War WARHAMMER III folder (the one with Warhammer3.exe)'
        if ($dlg.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) { return $dlg.SelectedPath }
        return $null
    } catch {
        return Read-Host 'Paste the game folder (the one with Warhammer3.exe)'
    }
}

# --- find the game ------------------------------------------------------------------
if ($GamePath) {
    $GamePath = $GamePath.Trim('"').TrimEnd('\')
    if ((Split-Path -Leaf $GamePath) -eq 'data') { $GamePath = Split-Path -Parent $GamePath }
} else {
    $GamePath = Find-Game
    if (-not $GamePath) { $GamePath = Ask-ForGame }
    if ($GamePath -and (Split-Path -Leaf $GamePath) -eq 'data') { $GamePath = Split-Path -Parent $GamePath }
}
if (-not (Test-GameFolder $GamePath)) {
    Say "That is not the game folder (no Warhammer3.exe and data folder in '$GamePath')." 'Red'
    exit 1
}
$Data   = Join-Path $GamePath 'data'
$Target = Join-Path $Data $PackName
Say "Game folder: $GamePath"

if (Get-Process -Name 'Warhammer3' -ErrorAction SilentlyContinue) {
    Say 'Total War: WARHAMMER III is running. Close the game, then run this again.' 'Red'
    exit 1
}

# --- uninstall ----------------------------------------------------------------------
if ($Uninstall) {
    $removed = $false
    foreach ($f in (Join-Path $Data $PackName), (Join-Path $Data $ThumbName), (Join-Path $GamePath $Example)) {
        if (Test-Path -LiteralPath $f) { Remove-Item -LiteralPath $f -Force; Say "Removed $f"; $removed = $true }
    }
    if ($removed) {
        Say 'Proactive Command is uninstalled.' 'Green'
        Say 'Your proactive_command_config.lua and proactive_command_log.txt (if any) were left in the game folder.'
    } else {
        Say 'Proactive Command was not installed.' 'Yellow'
    }
    exit 0
}

# --- install / update ---------------------------------------------------------------
$Source = Join-Path $Here $PackName
if (-not (Test-Path -LiteralPath $Source)) {
    Say "$PackName is missing next to this installer. Extract the whole zip first, then run Install.bat from the extracted folder." 'Red'
    exit 1
}
$old = Get-PackVersion $Target
$new = Get-PackVersion $Source

Copy-Item -LiteralPath $Source -Destination $Target -Force
$thumb = Join-Path $Here $ThumbName
if (Test-Path -LiteralPath $thumb) { Copy-Item -LiteralPath $thumb -Destination (Join-Path $Data $ThumbName) -Force }
$example = Join-Path $Here $Example
if (Test-Path -LiteralPath $example) { Copy-Item -LiteralPath $example -Destination (Join-Path $GamePath $Example) -Force }

if (-not $old)            { Say "Installed Proactive Command v$new." 'Green' }
elseif ($old -eq $new)    { Say "Reinstalled Proactive Command v$new (it was already up to date)." 'Green' }
else                      { Say "Updated Proactive Command from v$old to v$new." 'Green' }
Say ''
Say 'Next:'
Say '  1. Open the game launcher, go to Mods, and tick "proactive_command".'
Say '  2. Untick "Just Good Babysitter" if you use it (both give orders to idle units).'
Say '  3. Optional settings: copy proactive_command_config.example.lua in the game folder to'
Say '     proactive_command_config.lua and edit it.'
Say "  Multiplayer: every player needs the same version (v$new)."
