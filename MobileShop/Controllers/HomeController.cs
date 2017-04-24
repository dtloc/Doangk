using MobileShop.Models.BUS;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileShop.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(int page = 1, int pagesize = 3)
        {
            var db = ShopOnlineBUS.DanhSach().ToPagedList(page, pagesize);
            return View(db);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}