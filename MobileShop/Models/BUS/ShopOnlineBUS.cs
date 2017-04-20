using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<sanpham> DanhSach()
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<sanpham>("select * from sanpham where bixoa =0");
        }
        public static PlMoblieConnection.sanpham ChiTietSanPham(int id)
        {
            var ct = new PlMoblieConnectionDB();
            return ct.SingleOrDefault<PlMoblieConnection.sanpham>("select * from sanpham where MaSanPham=@0", id);

        }
    }
}