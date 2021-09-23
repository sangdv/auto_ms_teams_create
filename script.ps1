# Duong dan toi file csv chua danh sach email sinh vien
$FILE_LOCATION = '710829-IT3170.csv'

# Dat ten cho group moi
$GROUP_NAME = Read-Host -Prompt 'Enter group name'

# Doc danh sach email tu file csv
$USERS = Import-Csv -Path "$FILE_LOCATION"


# Ket noi voi Microsoft Teams
Get-Module -ListAvailable -Name MicrosoftTeams
Connect-MicrosoftTeams

# Kiem tra group ton tai chua?
$group = Get-Team -DisplayName $GROUP_NAME

# Neu chua thi tao group moi
if ($null -eq $group){
    $group = New-Team -displayname $GROUP_NAME -Template EDU_Class
}    

# Add cac sinh vien vao nhom Team vua tao
foreach ($row in $USERS) {   
    Write-Host ("Adding " + $row.email)
    Add-TeamUser -GroupId $group.GroupId -User $row.email 
    #Start-Sleep -s 2
}

Write-Host "Users have been successfully added to the team!"
