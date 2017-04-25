using Microsoft.Owin.BuilderProperties;
using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileShop.Areas.Admin.Controllers
{
    public class QuanLiSanPhamController : Controller
    {
        private object db;

        // GET: Admin/QuanLiSanPham
        public ActionResult Index()
        {
            var dssp = MobileShop.Models.BUS.ShopOnlineBUS.DanhSach();
            return View(dssp);
        }

        // GET: Admin/QuanLiSanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QuanLiSanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QuanLiSanPham/Create
        [HttpPost]
        public ActionResult Create(sanpham sp)
        {
            //try
            //{
            var ha = HttpContext.Request.Files[0];
            if(ha.ContentLength >0)
            {
                string name = sp.MaSanPham + ".png";
                string fullName = "~/images/" + name;
                ha.SaveAs(Server.MapPath(fullName));
                sp.HinhAnh = "/images/" + name;
            }
                // TODO: Add insert logic here
                var db = new PlMoblieConnectionDB();
                db.Insert(sp);
                return RedirectToAction("Index");
            //}
            //catch
            //{
            //    return View();
            //}
        }

        // GET: Admin/QuanLiSanPham/Edit/5
        public ActionResult Edit(int id)
        {
            var sp = MobileShop.Models.BUS.ShopOnlineBUS.ChiTietSanPham(id);
            return View(sp);
        }

        // POST: Admin/QuanLiSanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(sanpham sp)
        {
            try
            {
                // TODO: Add update logic here
                var ha = HttpContext.Request.Files[0];
                if (ha.ContentLength > 0)
                {
                    string name = sp.MaSanPham + ".png";
                    string fullName = "~/images/" + name;
                    ha.SaveAs(Server.MapPath(fullName));
                    sp.HinhAnh = "/images/" + name;
                }
                // TODO: Add insert logic here
                var db = new PlMoblieConnectionDB();
                db.Update(sp);
                return RedirectToAction("Index");
                //}
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLiSanPham/Delete/5
        public ActionResult Delete(int id)
        {
            var sp = MobileShop.Models.BUS.ShopOnlineBUS.NSX(id);
            MobileShop.Models.BUS.ShopOnlineBUS.DeleteNSX(sp);
            return RedirectToAction("Index");
        }

        // POST: Admin/QuanLiSanPham/Delete/5
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
