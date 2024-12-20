using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.Pkcs;
using System.Text;
using System.Threading.Tasks;

namespace _1_tx2
{
    class NhanVien
    {
        public int MaNV { get; set; }
        public string HoTen { get; set; }
        public DateTime NgaySinh { get; set; }
        public string GioiTinh { get; set; }
        public string PhongBan { get; set; }
        public int HeSoLuong { get; set; }
        public int Tuoi 
        {
            get { return DateTime.Now.Year - NgaySinh.Year; }
        }
    }
}
