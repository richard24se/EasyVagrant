function dogrant{
    $actualPath = Get-Location  | select Path -ExpandProperty Path
    #EDIT THIS PATH 
    $remotePath = "apps/"
    #USE TYPE DIRECTORY LIKE THIS :---> c:\apps\backend\users or c:\apps\frotend\sync
    $parent = (get-item $(Get-Location)).parent | select Name -ExpandProperty Name
    $current = Split-Path -leaf -path (Get-Location)
    $targetPath = $remotePath+""+$parent+"/"+$current
    #EDIT DIRECTORY OF VAGRANT
    cd C:\vagrant
    $command = "cd "+$targetPath+"; /bin/bash"
    vagrant ssh -c $command
    Write-Host "saliste! Regresas a tu anterior Path..."
    cd $actualPath
}
function vacker([string]$option){
    $actualPath = Get-Location  | select Path -ExpandProperty Path
    cd C:\vagrant
    vagrant $option
    Write-Host "saliste! Regresas a tu anterior Path..."
    cd $actualPath
}
