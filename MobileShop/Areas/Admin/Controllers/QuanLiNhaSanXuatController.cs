using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileShop.Areas.Admin.Controllers
{
    public class QuanLiNhaSanXuatController : Controller
    {
        [Authorize(Roles = "Admin")]
        // GET: Admin/QuanLiNhaSanXuat
        public ActionResult Index()
        {
            var dsnsx = MobileShop.Models.BUS.NhaSanXuatBUS.DanhSach();
            return View(dsnsx);
        }

        // GET: Admin/QuanLiNhaSanXuat/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QuanLiNhaSanXuat/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QuanLiNhaSanXuat/Create
        [HttpPost]
        public ActionResult Create(nhasanxuat nsx)
        {
            try
            {
                // TODO: Add insert logic here

                var db = new PlMoblieConnectionDB();
                db.Insert(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLiNhaSanXuat/Edit/5
        public ActionResult Edit(int id)
        {
            
            var n = MobileShop.Models.BUS.ShopOnlineBUS.NSX(id);
            return View(n);
        }

        // POST: Admin/QuanLiNhaSanXuat/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(int id, nhasanxuat n)
        {
            try
            {
                // TODO: Add update logic here

                var db = new PlMoblieConnectionDB();
                db.Update(n);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLiNhaSanXuat/Delete/5
        public ActionResult Delete(int id)
        {
            var sp = MobileShop.Models.BUS.ShopOnlineBUS.NSX(id);
            MobileShop.Models.BUS.ShopOnlineBUS.DeleteNSX(sp);
            return RedirectToAction("Index");
        }

        // POST: Admin/QuanLiNhaSanXuat/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
