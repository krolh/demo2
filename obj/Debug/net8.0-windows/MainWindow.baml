   M S B A M L   `   `   `  ����@  <1_tx2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:_1_tx2_1_tx2  5   	       _1_tx2.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:_1_tx2     5   	     � Title$  demo bai tx2��5   	   $	��550��6   $	��800��6+   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��auto �6   �� 5       � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6   $��0��6   $'��!Quản lý thông tin nhân viên��5      $��2��5      $��Center=�5      
����  �$��28(�5      $��DemiBold"�5      �� 5"   
   $��0��6   $��1��6!   $��7��6.   $��2��6?   
��� � �$��1q�6g   
�������$��5q�6�   �� 5$   
   $��1��6   $��0��6   $��Mã nhân viên:��6-      
labelStyle#��[  6E   �� 5%   
   -   5         ��Name$ txtMa��5%      $��1��6!   $��1��6.   $��25��6>   $	��150��6J   $
��Left=�5&      $��10,0,0,0q�5'      �� 5)   
   $��2��6   $��0��6   $��	Họ tên��6-   #��[  6>   �� 5*   
   -   5        $ txtHoten��5*      $��1��6$   $��2��64   $��25��6A   $	��200��6M   $
��Left=�5+      $��10,0,0,0q�5,      �� 5.   
   $��3��6   $��0��6   $��
Ngày sinh��6-   #��[  6A   (  "System.Windows.Controls.DatePicker  5/   
   -   5          Name$ 
dpNgaySinh��5/      $��3��6)   $��1��66   $��25��6F   $	��150��6R   $
��Left=�50      $��10,0,0,0q�51      �� 53   
   $��4��6   $��0��6   $��Giới tính��6-   #��[  6A   �� 54   
   $��4��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��10,15,10,10q�6K   $
��Left=�6`   .+�55      	� -   5         	�Name$ radNam��55      .��6*   Nam6/   	� 56      -   5        $ radNu��56      $��20,0,0,0q�6)   .��6;   Nữ6?   57      �� 59   
   $��5��6   $��0��6   $��
Phòng ban��6-   #��[  6A   �� 5:   
   -   5         ��Name$ 
cbPhongBan��5:      $��5��6'   $��1��64   $��25��6D   $	��180��6P   $
��Left=�5;      $��10,0,0,0q�5<      .@�5=      �� .��6   Tổ chức6$   �� 5>      .��6   Kế hoạch6%   �� 5?      .��6   	Vật tư6#   5@      �� 5B   
   $��0��6   $��6��6    $��Hệ số lương��6-   #��[  6C   �� 5C   
   -   5        $ txtHeSoLuong��5C      $��1��6(   $��6��68   $��25��6E   $	��150��6Q   $
��Left=�5D      $��10,0,0,0q�5E      &   System.Windows.Controls.DataGrid  5G   
   -   5          Name$ dtgNhanVien��5G      $��0��6(   $��7��68   $��2��5H      $��10,10,10,10q�6'   	   AutoGenerateColumns$	 False��5I        dataGrid
   ColumnHeaderStyle#
 [ 5J      $	��100��5K         Columns 5L      0  *System.Windows.Controls.DataGridTextColumn  5M      ,  &System.Windows.Controls.DataGridColumn   Header$ Mã nhân viên��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6;   �� *MaNV+  5N      $ 	Họ tên��6%    65   �� *HoTen+  5O      $ Giới tính��6%    68   �� *
GioiTinh+  5P      $ 
Phòng ban��6%    68   �� *
PhongBan+  5Q      $ 
Ngày sinh��6%    68   �� *
NgaySinh+ �� StringFormat$ 
dd-MM-yyyy��  5R      $ Tuổi��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6L     dataGridCellStyle   	CellStyle# [ 6V    63   �� *Tuoi+6V   5T      �� 5V   
   $��0��6   $��8��6%   $��2��62   $ 
Horizontal=�5W      $��Center=�5X      .+�5Y      �� -	   5         ��Name$ btnNhap��5Y      $��10q�6&     buttonStyle#��[ 62     buttonTemplate#��[ 6W   $	��100��6�   $��30��6�   .��6�   Nhập6�   �� 5Z      -
   5        $ 
btnWindow2��5Z      $��10q�6)   #��[ 65   #��[ 6Z   $	��100��6�   $��30��6�   .��6�   
Window 26�   5[      5\      5]      