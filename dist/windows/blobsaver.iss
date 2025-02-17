; Script generated by the Inno Setup Script Wizard.
; This script should only be run from Gradle; otherwise some values will not be set properly

#define MyAppName "@AppName@"
#define MyAppVersion "@AppVersion@"
#define MyAppPublisher "airsquared"
#define MyAppURL "https://www.github.com/airsquared/blobsaver"
#define MyAppExeName "blobsaver.exe"
#define MyAppCopyright "@AppCopyright@"
#define OutputDir "@OutputDir@"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F5EAE50A-1E3A-4DA5-B2F0-4D29968E59CD}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
AppCopyright={#MyAppCopyright}
ArchitecturesAllowed=x64 arm64
ArchitecturesInstallIn64BitMode=x64 arm64
Uninstallable=not IsTaskSelected('portableMode')
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir={#OutputDir}
OutputBaseFilename=blobsaver-{#MyAppVersion}
SetupIconFile=blob.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "portableMode"; Description: "Portable Installation Mode"; Flags: unchecked

[Files]
Source: "blobsaver\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

