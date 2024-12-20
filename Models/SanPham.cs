using System;
using System.Collections.Generic;

namespace BaiThucHanh11_12.Models;

public partial class SanPham
{
    public string MaSP { get; set; } = null!;

    public string? TenSP { get; set; }

    public string? MaLoai { get; set; }

    public int? DonGia { get; set; }

    public int? SoLuong { get; set; }

    public virtual LoaiSanPham? MaLoaiNavigation { get; set; }
}
