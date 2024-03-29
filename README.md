# Hướng dẫn cài đặt
1. Cài đặt PowerShell  
- Windows 10: có sẵn, không cần cài thêm  
- Windows 8 trở xuống: cần nâng cấp PowerShell lên phiên bản mới (download tại https://www.microsoft.com/en-us/download/details.aspx?id=54616)  
- MacOS: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos?view=powershell-7.1  
- Linux: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux?view=powershell-7.1  

2. Chạy PowerShell dưới quyền Administrator rồi chạy lần lượt các lệnh sau:  
```
Install-Module -Name PowerShellGet -Repository PSGallery -Force  

Set-ExecutionPolicy Unrestricted  
```
3. Tắt và bật lại PowerShell rồi chạy lệnh sau:  
```
Install-Module -Name MicrosoftTeams -AllowPrerelease -RequiredVersion "2.4.1-preview" -AllowClobber -Force
```
# Hướng dẫn chạy code để tạo team tự động
1. Vào https://qldt.hust.edu.vn, xuất danh sách sinh viên của lớp, xoá tất cả các cột chỉ giữ cột email (phải giữ cả header *Email*).
2. Lưu (Save as) danh sách email dưới dạng csv utf-8. File csv này cần lưu cùng thư mục chứa file **script.ps1**
3. Sửa đổi nội dung trong **script.ps1** thành tên file csv tương ứng ở bước 2.
4. Vào PowerShell chạy **script.ps1**, nhập tên group của Team mới mà mình muốn tạo và chờ cho nhập hết sinh viên. Nếu đã tạo sẵn Team từ trước thì cần copy/paste tên của Team đã tạo vào.
5. Vào MS Teams để **Activate** cho team vừa tạo

Video hướng dẫn (bật subtitle để có hướng dẫn chi tiết từng bước): https://youtu.be/sxtPkhgdxjo

Nếu muốn xoá users trong team, có thể tham khảo: https://pnp.github.io/cli-microsoft365/sample-scripts/aad/manage-group-users/

# Tài liệu tham khảo
Các lệnh làm việc với MS Teams qua PowerShell: https://docs.microsoft.com/en-us/powershell/module/teams/?view=teams-ps


