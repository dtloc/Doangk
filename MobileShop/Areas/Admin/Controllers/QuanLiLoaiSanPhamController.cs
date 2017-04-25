using PlMoblieConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MobileShop.Areas.Admin.Controllers
{
    public class QuanLiLoaiSanPhamController : Controller
    {
        // GET: Admin/QuanLiLoaiSanPham
        public ActionResult Index()
        {
            var dslsp = MobileShop.Models.BUS.LoaiSanPhamBUS.DanhSach();
            return View(dslsp);
        }

        // GET: Admin/QuanLiLoaiSanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/QuanLiLoaiSanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/QuanLiLoaiSanPham/Create
        [HttpPost]
        public ActionResult Create(loaisanpham lsp)
        {
            try
            {
                // TODO: Add insert logic here

                var db = new PlMoblieConnectionDB();
                db.Insert(lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLiLoaiSanPham/Edit/5
        public ActionResult Edit(int id)
        {
            var n = MobileShop.Models.BUS.LoaiSanPhamBUS.lsp(id);
            return View(n);
        }

        // POST: Admin/QuanLiLoaiSanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, loaisanpham n)
        {
            try
            {
                var db = new PlMoblieConnectionDB();
                db.Update(n);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/QuanLiLoaiSanPham/Delete/5
        public ActionResult Delete(int id)
        {
            var sp = MobileShop.Models.BUS.LoaiSanPhamBUS.lsp(id);
            MobileShop.Models.BUS.LoaiSanPhamBUS.DeleteLSP(sp);
            return RedirectToAction("Index");
        }

        // POST: Admin/QuanLiLoaiSanPham/Delete/5
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
