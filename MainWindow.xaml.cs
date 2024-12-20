using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace _1_tx2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        List<NhanVien> dsNhanVien = new List<NhanVien>();

        private void btnNhap_Click(object sender, RoutedEventArgs e)
        {
            NhanVien nvMoi = new NhanVien();
            nvMoi.MaNV = int.Parse(txtMa.Text);
            nvMoi.HoTen = txtHoten.Text;
            nvMoi.NgaySinh = Convert.ToDateTime(dpNgaySinh.SelectedDate);
            if(radNam.IsChecked == true)
            {
                nvMoi.GioiTinh = "Nam";
            } 
            else
            {
                nvMoi.GioiTinh = "Nữ";
            }
            nvMoi.PhongBan = cbPhongBan.Text;
            nvMoi.HeSoLuong = int.Parse(txtHeSoLuong.Text);
            dsNhanVien.Add(nvMoi);
            dtgNhanVien.ItemsSource = null;
            dtgNhanVien.ItemsSource = dsNhanVien;
        }

        private void btnWindow2_Click(object sender, RoutedEventArgs e)
        {
            int tuoiMax = dsNhanVien[0].Tuoi;
            for(int i = 1; i < dsNhanVien.Count; i++)
            {
                if (dsNhanVien[i].Tuoi > tuoiMax)
                {
                    tuoiMax=dsNhanVien [i].Tuoi;
                }
            }
            List<NhanVien> dsTuoiMax = new List<NhanVien>();
            foreach(var item in dsNhanVien)
            {
                if(item.Tuoi == tuoiMax)
                {
                    dsTuoiMax.Add(item);
                }    
            }
            Window2 myWindow = new Window2();
            myWindow.dtgTuoiMax.ItemsSource = dsTuoiMax;
            myWindow.Show();
        }
    }
}