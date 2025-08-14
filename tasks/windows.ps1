[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [String]
    $Command,

    [Parameter(Mandatory = $false)]
    [bool]
    $Interleave=$true,

    [Parameter(Mandatory = $false)]
    [bool]
    $FailOnFail=$true,

    [Parameter(Mandatory = $false)]
    [String]
    $Provider="cmd"
)

function write_error($Message, $ExitCode){
    $error_payload= @"
{
	"_error": {
		"msg": "Exec task unsuccessful due to ${Message}.",
		"kind": "puppetlabs.tasks/task-error",
		"details": {
			"exitcode": ${ExitCode}
		}
	 }
}
"@
    Write-Host $error_payload
}

$ExitCode=0
if ($Interleave -eq $true){
    $Redirect = "2>&1"
}

if ($Provider -eq "cmd") {
  $CommandOutput = cmd /c $Command $Redirect
} elseif ($Provider -eq "powershell") {
  if ($Interleave -eq $true) {
    $CommandOutput = powershell -Command $Command 2>&1
  } else {
    $CommandOutput = powershell -Command $Command
  }
} else {
  write_error -Message "Unsupported provider: $Provider" -ExitCode 1
}
    
if ($LASTEXITCODE -eq 0){
    echo $CommandOutput
}
else {
    if (($FailOnFail -eq $true) -and ( $LASTEXITCODE -ne 0 )){
        $ExitCode=255
    }

    write_error -Message $CommandOutput -ExitCode $ExitCode
}

exit $ExitCode
