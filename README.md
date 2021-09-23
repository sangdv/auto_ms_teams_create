# Hướng dẫn cài đặt
1. Chạy powershell (có sẵn trong Windows 10) dưới quyền Administrator rồi chạy các lệnh sau:  
```
Install-Module -Name PowerShellGet -Repository PSGallery -Force  
Set-ExecutionPolicy Unrestricted  
```
2. Tắt và bật lại powershell rồi chạy lệnh sau:  
```
Install-Module -Name MicrosoftTeams -AllowPrerelease -RequiredVersion "2.4.1-preview" -AllowClobber  
```
# Hướng dẫn chạy code để tạo team tự động
1. Vào qldt.hust.edu.vn, xuất danh sách sinh viên của lớp, xoá tất cả các cột chỉ giữ cột email.
2. Lưu (Save as) danh sách email dưới dạng csv utf-8. File csv này cần lưu cùng thư mục chứa file **script.ps1**
3. Sửa đổi nội dung trong **script.ps1** thành tên file csv tương ứng ở bước 2.
4. Vào powershell chạy **script.ps1**, nhập tên group của Team mới mà mình muốn tạo và chờ cho nhập hết sinh viên
5. Vào MS Teams để **Activate** cho team vừa tạo

Tham khảo video hướng dẫn tại: https://youtu.be/sxtPkhgdxjo

# Tham khảo
Có thể tham khảo tất cả các lệnh làm việc với MS Teams tại đây: https://docs.microsoft.com/en-us/powershell/module/teams/?view=teams-ps
