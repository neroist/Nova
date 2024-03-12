; Nova, a program to control Govee light strips from the command line
; Copyright (c) 2023 neroist
; 
; This software is released under the MIT License.
; https://opensource.org/licenses/MIT

; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Nova"
#define MyAppVersion "1.7.0"
#define MyAppPublisher "Jasmine"
#define MyAppExeName "nova.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2001A884-F41B-4957-9BE6-68DF0BB45D37}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=LICENSE.txt
InfoAfterFile=thankyou.txt
PrivilegesRequired=lowest
OutputDir=../bin
OutputBaseFilename=nova-installer
UsePreviousAppDir=no
Compression=lzma
SolidCompression=yes
WizardStyle=modern
ChangesEnvironment=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "/../bin/nova.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\msys64\mingw64\bin\libwinpthread-1.dll"; DestDir: "{app}"
Source: "C:\msys64\mingw64\bin\libcrypto-1_1-x64.dll"; DestDir: "{app}"
Source: "C:\msys64\mingw64\bin\libssl-1_1-x64.dll"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

; Add Nova to path
[Registry]
Root: HKCU; Subkey: "Environment"; ValueType: expandsz; ValueName: "Path"; ValueData: "{olddata};{app}"

;[Code]
;function notInPath(Param: String): Boolean;
;begin
;  if RegValueExists(HKEY_CURRENT_USER, 'Path', '{app}') then
;    result := false
;  else
;    result := true
;end;
