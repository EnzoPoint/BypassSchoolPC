Clear-Host

$TableauCode = @{1 = "F8Hv4U3T67"; 2 = "8wjeASK5xC"; 3 = "gs6W5gFjPB": 4 = "gGVrQNhmH2"; 5 = "74m4MEHwe7"; 6 = "YaJ585mkXg"; 7 = "PYH7Ad284a"; 8 = "F8Hv4U3T67"} 

function HomeScreen {
    Write-Host @"- Check the compatibility to bypass the BIOS & Get the BIOS password (if compatible)                    
    By BartPoint // just for help you to bypass BIOS ^^"@
    -ForegroundColor Green -BackgroundColor Black
    cmd /c wmic bios get smbiosbiosversion > ./Version.txt
}

HomeScreen 

$EmplacementFichier = [string]
$NomFichier = [string]

$NomFichier = "Version.txt"

function Get-ScriptDirectory
{
	$Invocation = (Get-Variable MyInvocation -Scope 1).Value
	$ScriptFolderPath = Split-Path $Invocation.MyCommand.Path
	return $ScriptFolderPath
}

$EmplacementFichier = Get-ScriptDirectory
$EmplacementFichier = "$EmplacementFichier\$NomFichier"
$MonFichier = get-content $EmplacementFichier

foreach ($UneLigne in $MonFichier){
	if($UneLigne -Contains "ENE_1") {
        Write-Host "The code of BIOS is : " + $TableauCode.1
    }
    elseif($UneLigne -Contains "ENE_2") {
        Write-Host "The code of BIOS is : " + $TableauCode.2
    }
    elseif($UneLigne -Contains "ENE_3") {
        Write-Host "The code of BIOS is : " + $TableauCode.3
    }
    elseif($UneLigne -Contains "ENE_4") {
        Write-Host "The code of BIOS is : " + $TableauCode.4
    }
    elseif($UneLigne -Contains "ENE_5") {
        Write-Host "The code of BIOS is : " + $TableauCode.5
    }
    elseif($UneLigne -Contains "ENE_6") {
        Write-Host "The code of BIOS is : " + $TableauCode.6
    }
    elseif($UneLigne -Contains "ENE_7") {
        Write-Host "The code of BIOS is : " + $TableauCode.7
    }
    elseif($UneLigne -Contains "timing") {
        Write-Host "The code of BIOS is : " + $TableauCode.8
    } else {
        Write-Host "you can maybe try this code of BIOS : " + $TableauCode.8 + "but maybe it's just not compatible now"
    }
}

Write-Host @"for information the password is in AZERTY and the BIOS is in QWERTY
if you want to launch the BIOS : 
-> Shutdown Computer 
-> Turn On and click on 'Echap' 
-> Enter the BIOS code in QWERTY.

Thx to Aide UnoWhy for find these code
This script is just for help some people to find and get the code."@

