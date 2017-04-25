using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MobileShop.Models.BUS
{
    public class NhaSanXuatBUS
    {
        private static object db;

        public static IEnumerable<nhasanxuat> DanhSach()
        {
            var db = new PlMoblieConnectionDB();
            return db.Query<nhasanxuat>("select * from nhasanxuat where bixoa =0");
        }
    }
}