using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        private static object db;

        public static IEnumerable<loaisanpham> DanhSach()
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<loaisanpham>("select * from loaisanpham where bixoa =0");
        }
        public static IEnumerable<sanpham> PhanLoaiSP(int id)
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<sanpham>("select * from sanpham where MaNSX = @0", id);
        }
        public static loaisanpham lsp(int id)
        {
            using (var db = new PlMoblieConnectionDB())
            {
                return db.SingleOrDefault<loaisanpham>("select * from loaisanpham where MaLSP = @0", id);
            }
        }
        public static void DeleteLSP(loaisanpham sp)
        {

            var db = new PlMoblieConnectionDB();
            db.Delete(sp);

        }

    }
}