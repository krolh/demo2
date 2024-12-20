using BaiThucHanh11_12.Models;
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

namespace BaiThucHanh11_12
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
        QlbanHangContext db = new QlbanHangContext();
        List<SanPham> ds = new List<SanPham>();
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            var query = from sp in db.SanPhams
                        join lsp in db.LoaiSanPhams
                        on sp.MaLoai equals lsp.MaLoai
                        orderby sp.DonGia
                        select new
                        {
                            sp.MaSP,
                            sp.TenSP,
                            MaLoai = lsp.TenLoai,
                            sp.DonGia,
                            sp.SoLuong,
                            ThanhTien = sp.SoLuong * sp.DonGia
                        };
            dtgSanPham.ItemsSource = query.ToList();
        }

        private void btnThem_Click(object sender, RoutedEventArgs e)
        {
            SanPham spm = new SanPham();
            spm.MaSP = txtMaSP.Text;
            spm.TenSP = txtTenSP.Text;
            spm.SoLuong = int.Parse(txtSL.Text);
            spm.DonGia = int.Parse(txtDonGia.Text);
            spm.MaLoai = txtMaLoai.Text;
            ds.Add(spm);
            dtgSanPham.ItemsSource = null;
            dtgSanPham.ItemsSource = ds;
        }
    }
}