using BaiThucHanh11_12.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BaiThucHanh11_12
{
    internal class SanPham
    {
        public string MaSP { get; set; } = null!;

        public string TenSP { get; set; }

        public string MaLoai { get; set; }

        public int DonGia { get; set; }

        public int SoLuong { get; set; }

        public double ThanhTien { get { return SoLuong * DonGia; } }
    }
}
