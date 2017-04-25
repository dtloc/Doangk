using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class SanPhamBUS
    {
        private static object db;

        public static IEnumerable<sanpham> PhanLoaiSP(int id)
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<sanpham>("select * from sanpham where MaNSX = @0", id);
        }
    }
}