$Web = New-Object System.Net.WebClient
$user = (whoami).Split('\')[1]
$installed = "False"

New-Item -ItemType Directory -Force -Path C:\tmp
New-Item -ItemType Directory -Force -Path "C:\Program Files\qBittorrent\themes"
New-Item -ItemType Directory -Force -Path C:\Users\$user\AppData\Roaming\Vencord\themes
New-Item -ItemType Directory -Force -Path C:\Users\$user\AppData\Roaming\Vencord\settings


while ($installed -eq "False") {

    #---dependencies---
    echo("Downloading Java...")
    $Web.DownloadFile("https://javadl.oracle.com/webapps/download/AutoDL?BundleId=249535_4d245f941845490c91360409ecffb3b4","C:\tmp\java.exe")
    sleep(1)
    echo("Installing Java...")
    Start-Process C:\tmp\java.exe /s -Wait
    sleep(1)

    echo("Downloading DirectX Runtime...")
    $Web.DownloadFile("https://download.microsoft.com/download/1/7/1/1718CCC4-6315-4D8E-9543-8E28A4E18C4C/dxwebsetup.exe","C:\tmp\directx.exe")
    sleep(1)
    echo("Installing DirectX Runtime...")
    Start-Process C:\tmp\directx.exe /Q -Wait
    sleep(1)

    echo("Downloading .NET Desktop Runtime 6...")
    $Web.DownloadFile("https://download.visualstudio.microsoft.com/download/pr/3136e217-e5b7-4899-9b7e-aa52ecb8b108/d74134edaa75e3300f8692660b9fb7b5/windowsdesktop-runtime-6.0.26-win-x64.exe","C:\tmp\dnet6.exe")
    sleep(1)
    echo("Installing .NET Desktop Runtime 6...")
    Start-Process C:\tmp\dnet6.exe /SILENT -Wait
    sleep(1)

    echo("Downloading .NET Desktop Runtime 7...")
    $Web.DownloadFile("https://download.visualstudio.microsoft.com/download/pr/00f765dd-f009-41b4-921f-bee1273f3638/3cb6ac95b2aa7eeb272c6179d56fd036/windowsdesktop-runtime-7.0.15-win-x64.exe","C:\tmp\dnet7.exe")
    sleep(1)
    echo("Installing .NET Desktop Runtime 7...")
    Start-Process C:\tmp\dnet7.exe /SILENT -Wait
    sleep(1)

    echo("Downloading .NET Desktop Runtime 8...")
    $Web.DownloadFile("https://download.visualstudio.microsoft.com/download/pr/f18288f6-1732-415b-b577-7fb46510479a/a98239f751a7aed31bc4aa12f348a9bf/windowsdesktop-runtime-8.0.1-win-x64.exe","C:\tmp\dnet8.exe")
    sleep(1)
    echo("Installing .NET Desktop Runtime 8...")
    Start-Process C:\tmp\dnet8.exe /SILENT -Wait
    sleep(1)

    echo("Downloading Redist 2015...")
    $Web.DownloadFile("https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe","C:\tmp\redist2015.exe")
    sleep(1)
    echo("Installing Redist 2015...")
    Start-Process C:\tmp\redist2015.exe /SILENT -Wait
    sleep(1)
    #---dependencies---

    #---7zip---
    echo("Downloading 7Zip...")
    $Web.DownloadFile("https://7-zip.org/a/7z2301.exe","C:\tmp\7zip.exe")
    sleep(1)
    echo("Installing 7Zip...")
    Start-Process C:\tmp\7zip.exe /S -Wait
    sleep(1)
    #---7zip---
    
    #---aimp---
    echo("Downloading aimp...")
    $Web.DownloadFile("https://www.aimp.ru/?do=download.file&id=3","C:\tmp\aimp.exe")
    sleep(1)
    echo("Installing aimp...")
    Start-Process C:\tmp\aimp.exe /SILENT -Wait
    sleep(1)
    #---aimp---

    #---eft---
    echo("Downloading eft...")
    $Web.DownloadFile("https://prod.escapefromtarkov.com/launcher/download","C:\tmp\eft.exe")
    sleep(1)
    echo("Installing eft...")
    Start-Process C:\tmp\eft.exe /SILENT -Wait
    sleep(1)
    #---eft---

    #---bcu---
    echo("Downloading BCUninstaller...")
    $Web.DownloadFile("https://github.com/Klocman/Bulk-Crap-Uninstaller/releases/download/v5.7/BCUninstaller_5.7_setup.exe","C:\tmp\bcu.exe")
    sleep(1)
    echo("Installing BCUninstaller...")
    Start-Process C:\tmp\bcu.exe /SILENT -Wait
    sleep(1)
    #---bcu---

    #---dc---
    echo("Downloading Discord...")
    $Web.DownloadFile("https://canary.discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86","C:\tmp\dc.exe")
    sleep(1)
    echo("Installing Discord...")
    Start-Process C:\tmp\dc.exe /SILENT -Wait
    sleep(1)
    #---dc---

    #---ea---
    echo("Downloading EA App...")
    $Web.DownloadFile("https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EAappInstaller.exe","C:\tmp\ea.exe")
    sleep(1)
    echo("Installing EA App...")
    Start-Process C:\tmp\ea.exe /SILENT -Wait
    sleep(1)
    #---ea---

    #---egl---
    echo("Downloading Epic Games Launcher...")
    $Web.DownloadFile("https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi","C:\tmp\egl.msi")
    sleep(1)
    echo("Installing Epic Games Launcher...")
    Start-Process C:\tmp\egl.msi /QUIET -Wait
    sleep(1)
    #---egl---

    #---gogg---
    echo("Downloading GOG Galaxy...")
    $Web.DownloadFile("https://webinstallers.gog-statics.com/download/GOG_Galaxy_2.0.exe?payload=BctwFB4f8leTLxM--EnxSHTDhgeyj_0O6H0zGm3dL9e92XezNg_J7zp8PZTwR1gSNVWLD85PR68qCsUdBFSPpN98l4kHUlzV0ILHRcHBvCTLn-TRihson_uUz0jh-DOsL8PdhnybLfu2ESk1YV49xSlobVz5h5B0ael_MUv6Oltx9lzm_z66h9eshOCn3kNX1S6GN12PIMQB5qoco9pQyceBedgA9Whms-GgNawnDhlfgEjkDSZH3ImMd02O2f_DG_nRBu3il0Lgd60bnZkrweFAnAk8iRF0ptczDmuaIACMrE3DHaTynlCSvy_H8uiTO9L-sub6rePAg5M6Hf_osfPX1i8A5A1CO0WHau07XkINy8uoP5g_V717mpAye_7XJyvn6k5FS0i9zD5uF3vFn1BDYnzno6RaHKX-jQDQqJnWmCzNxkG6Ll5qgFhg2pjcLMEfZvt_nMV1fl7ys-iUM2_0hb-IOc6hnWRwRTK4nrqcEKo6loNdG3nXueXPQHSWKEXNh-WeMsHDrDTZi4fQqKsKDJjGDHxUy55keduHydQc5h1znraRoKR9R6l9psmqex7XTR-GsL6W9S9EwnwUK0W9J1BP41MSErqSPBGjOsDb3V1kcGIWgFqYyEYDM-ZxFEcXX7kTr8N64L-TyStIk04ZSnzvyqvQIHx3C27awC4.","C:\tmp\gogg.exe")
    sleep(1)
    echo("Installing GOG Galaxy...")
    Start-Process C:\tmp\gogg.exe -Wait
    sleep(1)
    #---gogg---

    #---librewolf---
    echo("Downloading LibreWolf...")
    $Web.DownloadFile("https://gitlab.com/api/v4/projects/44042130/packages/generic/librewolf/121.0-1/librewolf-121.0-1-windows-x86_64-setup.exe","C:\tmp\lb.exe")
    sleep(1)
    echo("Installing LibreWolf...")
    Start-Process C:\tmp\lb.exe -Wait
    sleep(1)
    #---librewolf---

    #---lgh---
    echo("Downloading LGHUB...")
    $Web.DownloadFile("https://download01.logi.com/web/ftp/pub/techsupport/gaming/lghub_installer.exe","C:\tmp\lgh.exe")
    sleep(1)
    echo("Installing LGHUB...")
    Start-Process C:\tmp\lgh.exe -Wait
    sleep(1)
    #---lgh---

    #---mx---
    echo("Downloading MobaXterm...")
    $Web.DownloadFile("https://download.mobatek.net/2362023122033030/MobaXterm_Installer_v23.6.zip","C:\tmp\MobaXterm_Installer_v23.6.zip")
    sleep(1)
    echo("Extracting MobaXterm...")
    Expand-Archive -LiteralPath C:\tmp\MobaXterm_Installer_v23.6.zip -DestinationPath C:\tmp\mx
    sleep(4)
    echo("Installing MobaXterm...")
    Start-Process C:\tmp\mx\MobaXterm_installer_23.6.msi /QUIET -Wait
    sleep(1)
    #---mx---

    #---ma---
    echo("Downloading MSI Afterburner...")
    $Web.DownloadFile("https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1705644306~acl=/*~hmac=409388ba66f147dc6f14619231f756e1a527a6b7e45f2320bea0ec5303d0aafb","C:\tmp\MSIAfterburnerSetup.zip")
    sleep(1)
    echo("Extracting MSI Afterburner...")
    Expand-Archive -LiteralPath C:\tmp\MSIAfterburnerSetup.zip -DestinationPath C:\tmp\ma
    sleep(4)
    echo("Installing MSI Afterburner...")
    Start-Process C:\tmp\ma\MSIAfterburnerSetup465.exe -Wait
    sleep(1)
    #---ma---

    #---mv---
    echo("Downloading Mullvad VPN...")
    $Web.DownloadFile("https://mullvad.net/en/download/app/exe/latest","C:\tmp\mv.exe")
    sleep(1)
    echo("Installing Mullvad VPN...")
    Start-Process C:\tmp\mv.exe -Wait #Not worky
    sleep(1)
    #---mv---

    #---np---
    echo("Downloading notepad++...")
    $Web.DownloadFile("https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.6.2/npp.8.6.2.Installer.x64.exe","C:\tmp\np.exe")
    sleep(1)
    echo("Installing notepad++...")
    Start-Process C:\tmp\np.exe -Wait
    sleep(1)
    #---np---

    #---nv---
    echo("Downloading Nvidia Driver...")
    $Web.DownloadFile("https://us.download.nvidia.com/Windows/546.65/546.65-desktop-win10-win11-64bit-international-dch-whql.exe","C:\tmp\nv.exe")
    sleep(1)
    echo("Installing Nvidia Driver...")
    Start-Process C:\tmp\nv.exe -Wait
    sleep(1)
    #---nv---

    #---orgb---
    echo("Downloading OpenRGB...")
    $Web.DownloadFile("https://openrgb.org/releases/release_0.9/OpenRGB_0.9_Windows_64_b5f46e3.zip","C:\tmp\orgb.zip")
    sleep(4)
    echo("Extracting OpenRGB...")
    Expand-Archive -LiteralPath C:\tmp\orgb.zip -DestinationPath C:\tmp\OpenRGB
    sleep(2)
    echo("Moving OpenRGB...")
    Move-Item -LiteralPath "C:\tmp\OpenRGB\OpenRGB Windows 64-bit" -Destination "C:\Program Files\OpenRGB"
    sleep(1)
    #---orgb---

    #---pc---
    echo("Downloading PrimoCache...")
    $Web.DownloadFile("https://www.romexsoftware.com/download/primo-cache/PrimoCache_Setup_4.3.0.exe","C:\tmp\pc.exe")
    sleep(1)
    echo("Installing PrimoCache...")
    Start-Process C:\tmp\pc.exe /SILENT -Wait
    sleep(1)
    #---pc---

    #---pl---
    echo("Downloading Prism Launcher...")
    $Web.DownloadFile("https://github.com/PrismLauncher/PrismLauncher/releases/download/8.0/PrismLauncher-Windows-MSVC-Setup-8.0.exe","C:\tmp\pl.exe")
    sleep(1)
    echo("Installing Prism Launcher...")
    Start-Process C:\tmp\pl.exe -Wait
    sleep(1)
    #---pl---

    #---qbt---
    echo("Downloading qBittorrent...")
    $Web.DownloadFile("https://sourceforge.net/projects/qbittorrent/files/qbittorrent-win32/qbittorrent-4.6.3/qbittorrent_4.6.3_x64_setup.exe/download","C:\tmp\qbt.exe")
    sleep(1)
    echo("Installing qBittorrent...")
    Start-Process C:\tmp\qbt.exe -Wait
    sleep(1)
    #---qbt---

    #---rgl---
    echo("Downloading Rockstargames Launcher...")
    $Web.DownloadFile("https://gamedownloads.rockstargames.com/public/installer/Rockstar-Games-Launcher.exe","C:\tmp\rgl.exe")
    sleep(1)
    echo("Installing Rockstargames Launcher...")
    Start-Process C:\tmp\rgl.exe -Wait
    sleep(1)
    #---rgl---

    #---shx---
    echo("Downloading ShareX...")
    $Web.DownloadFile("https://github.com/ShareX/ShareX/releases/download/v15.0.0/ShareX-15.0.0-setup.exe","C:\tmp\shx.exe")
    sleep(1)
    echo("Installing ShareX...")
    Start-Process C:\tmp\shx.exe /SILENT -Wait
    sleep(1)
    #---shx---

    #---steam---
    echo("Downloading Steam...")
    $Web.DownloadFile("https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe","C:\tmp\steam.exe")
    sleep(1)
    echo("Installing Steam...")
    Start-Process C:\tmp\steam.exe -Wait
    sleep(1)
    #---steam---

    #---tcno---
    echo("Downloading TcNo...")
    $Web.DownloadFile("https://github.com/TCNOco/TcNo-Acc-Switcher/releases/download/2023-06-27_01/TcNo.Account.Switcher.-.Installer_2023-06-27_01.exe","C:\tmp\tcno.exe")
    sleep(1)
    echo("Installing TcNo...")
    Start-Process C:\tmp\tcno.exe -Wait
    sleep(1)
    #---tcno---

    #---vera---
    echo("Downloading VeraCrypt...")
    $Web.DownloadFile("https://launchpad.net/veracrypt/trunk/1.26.7/+download/VeraCrypt%20Setup%201.26.7.exe","C:\tmp\vera.exe")
    sleep(1)
    echo("Installing VeraCrypt...")
    Start-Process C:\tmp\vera.exe -Wait
    sleep(1)
    #---vera---

    #---vencord---
    echo("Downloading Vencord...")
    $Web.DownloadFile("https://github.com/Vencord/Installer/releases/latest/download/VencordInstaller.exe","C:\tmp\vencord.exe")
    sleep(1)
    echo("Moving Vencord...")
    Move-Item -LiteralPath "C:\tmp\vencord.exe" -Destination "C:\Users\$user\Documents"
    sleep(1)
    #---vencord---

    #---partition expert---
    echo("Downloading partition expert...")
    $Web.DownloadFile("https://disk-tool.com/download/mde/mde-free-setup.zip","C:\tmp\partition-exptert.zip")
    sleep(1)
    echo("Extracting partition expert...")
    Expand-Archive -LiteralPath C:\tmp\partition-exptert.zip -DestinationPath C:\tmp\partition-exptert
    sleep(1)
    echo("Installing partition expert...")
    Start-Process C:\tmp\partition-exptert\mde-free-setup.exe /S -Wait
    sleep(1)
    #---partition expert---

    #---accm---
    echo("Downloading ACCM...")
    $Web.DownloadFile("https://acstuff.ru/app/latest.zip","C:\tmp\accm.zip")
    sleep(1)
    echo("Extracting ACCM...")
    Expand-Archive -LiteralPath C:\tmp\accm.zip -DestinationPath C:\tmp\accm
    sleep(1)
    echo("Moving ACCM...")
    Move-Item -LiteralPath "C:\tmp\accm" -Destination "C:\Users\$user\Documents"
    sleep(1)
    #---accm---

    #---oosu10---
    echo("Downloading OOSU10...")
    $Web.DownloadFile("https://dl5.oo-software.com/files/ooshutup10/OOSU10.exe","C:\tmp\oosu10.exe")
    sleep(1)
    echo("Moving OOSU10...")
    Move-Item -LiteralPath "C:\tmp\oosu10.exe" -Destination "C:\Users\$user\Documents"
    sleep(1)
    #---oosu10---

    #---procesexp---
    echo("Downloading Process Explorer...")
    $Web.DownloadFile("https://download.sysinternals.com/files/ProcessExplorer.zip","C:\tmp\ProcessExplorer.zip")
    sleep(1)
    echo("Extracting Process Explorer...")
    Expand-Archive -LiteralPath C:\tmp\ProcessExplorer.zip -DestinationPath C:\tmp\ProcessExplorer
    sleep(1)
    echo("Moving Process Explore...")
    Move-Item -LiteralPath "C:\tmp\ProcessExplorer" -Destination "C:\Program Files\"
    sleep(1)
    #---procesexp---

    #---backup thing---
    echo("Downloading Backup.zip...")
    $Web.DownloadFile("https://codeload.github.com/pythonius-xd/backup/zip/refs/heads/main","C:\tmp\backup.zip")
    sleep(1)
    echo("Extracting Backup.zip...")
    Expand-Archive -LiteralPath C:\tmp\backup.zip -DestinationPath C:\tmp\backup
    sleep(1)
    echo("Moving qBittorrent themes...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\themes\ayuDark.qbtheme" -Destination "C:\Program Files\qBittorrent\themes\ayuDark.qbtheme"
    sleep(1)
    echo("Moving qBittorrent themes...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\themes\ICEBERG.qbtheme" -Destination "C:\Program Files\qBittorrent\themes\ICEBERG.qbtheme"
    sleep(1)
    echo("Moving Vencord themes...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\themes\AMOLED-Cord.theme.css" -Destination "C:\Users\$user\AppData\Roaming\Vencord\themes\AMOLED-Cord.theme.css"
    sleep(1)
    echo("Moving Vencord themes...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\themes\tokyo-night.theme.css" -Destination "C:\Users\$user\AppData\Roaming\Vencord\themes\tokyo-night.theme.css"
    sleep(1)
    echo("Moving Vencord settings...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\cfg\settings\" -Destination "C:\Users\$user\AppData\Roaming\Vencord\settings\"
    sleep(1)
    echo("Moving Pics...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\pics\New Bitmap Image.bmp" -Destination "C:\Users\$user\Pictures\New Bitmap Image.bmp"
    sleep(1)
    echo("Moving Pics...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\pics\pic.png" -Destination "C:\Users\$user\Pictures\pic.png"
    sleep(1)
    echo("Moving Firefox theme to desktop...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\firefox" -Destination "C:\Users\$user\Desktop\firefox\"
    sleep(1)
    echo("Moving OOSU10.cfg...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\cfg\ooshutup10.cfg" -Destination "C:\Users\$user\Documents\ooshutup10.cfg"
    sleep(1)
    echo("Moving OpenRGB.cfg...")
    Move-Item -LiteralPath "C:\tmp\backup\backup-main\cfg\openrgb.orp" -Destination "C:\Program Files\OpenRGB\openrgb.orp"
    sleep(1)
    #---backup thing---

    #---win activate---
    sleep(1)
    echo("Downloading HWID Activation...")
    $Web.DownloadFile("https://raw.githubusercontent.com/massgravel/Microsoft-Activation-Scripts/master/MAS/Separate-Files-Version/Activators/HWID_Activation.cmd","C:\tmp\activate.cmd")
    sleep(1)
    Start-Process C:\tmp\activate.cmd -Wait
    #---win activate---

    $installed = "True"
}

echo("Removing installed files...")
Remove-Item -Path C:\tmp\*