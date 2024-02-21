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
#Write-Host ("Adding " + $group.GroupId)
# Neu chua thi tao group moi
if ($null -eq $group){
    $group = New-Team -displayname $GROUP_NAME -Template EDU_Class
}    

$groupID = $group[0].GroupId

# Tạo các private channel
foreach ($row in $USERS) {   
    New-TeamChannel -GroupId $groupID -DisplayName $row.channel -MembershipType Private
}

# Add cac sinh vien vao nhom Team vua tao
foreach ($row in $USERS) {  

    # Add sinh vien vao group  
    Write-Host ("Adding " + $row.email)
    Add-TeamUser -GroupId $groupID -User $row.email 

    # Xoa sinh vien khoi group
    # Remove-TeamUser -GroupId $group[0].GroupId -User $row.email


    # Them sinh vien vao private channel
    # Write-Host ("Adding " + $row.email + " to " + $row.channel)
    # Add-TeamChannelUser -GroupId $groupID -DisplayName $row.channel -User $row.email

    # Add-TeamChannelUser -GroupId $groupID -DisplayName $row.channel -User "nga.nguyenthithanh@hust.edu.vn" -Role "Owner"
}
Write-Host "Users have been successfully added to the team!"
