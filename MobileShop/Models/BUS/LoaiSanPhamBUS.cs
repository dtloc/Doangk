using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<nhasanxuat> DanhSach()
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<nhasanxuat>("select * from nhasanxuat where bixoa =0");
        }
        public static IEnumerable<sanpham> PhanLoaiSP(int id)
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<sanpham>("select * from sanpham where MaNSX = @0", id);
        }
    }
}