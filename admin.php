<?php

ob_start();
session_start();

include 'model/connect.php';
include 'model/product.php';
include 'model/danhmuc.php';
include 'model/khachhang.php';
include 'model/tintuc.php';
include 'model/banners.php';
include 'model/hoadon.php';
include 'model/binhluan.php';
include 'model/hotro.php';


include 'admin/layout/admin_header.php';
if (isset($_GET['act'])) {
 $act = $_GET['act'];
 switch ($act) {
  case 'qldmsp':
   //them danh muc sản phẩm
   if (isset($_POST['add']) && $_POST['add']) {
    $tendm = $_POST['tendm'];
    $dequi = $_POST['dequi'];
    $dm = new danhmuc();
    $dm->insert($tendm, $dequi);
   }
   //Cap nhat danh muc san pham
   if (isset($_POST['update']) && $_POST['update']) {
    $madm = $_POST['madm'];
    $tendm = $_POST['tendm'];
    $dequi = $_POST['dequi'];
    $dm = new danhmuc();
    $dm->update($madm, $tendm, $dequi);
   }
   //Xoa danh muc
   if (isset($_GET['del']) && $_GET['del'] == 1) {
    $madm = $_GET['madm'];
    $dm = new danhmuc();
    $dm->delete($madm);
   }
   include 'admin/danhmuc/qldmsp.php';
   break;
  case 'qlsp':
   //Thêm sản phẩm
   if (isset($_POST['add']) && $_POST['add']) {
    $madm = $_POST['madm'];
    $tensp = $_POST['tensp'];
    $gia = $_POST['gia'];
    $daban = $_POST['daban'];
    $chitiet = $_POST['chitiet'];
    $chitietngan = $_POST['chitietngan'];
    $khuyenmai = $_POST['khuyenmai'];
    $trangthai = $_POST['trangthai'];
    $soluong = $_POST['soluong'];
    $dungluong = $_POST['dungluong'];
    $mausac = $_POST['mausac'];
    $mota = $_POST['mota'];
    $hinhanh = $_FILES['hinhanh']['name'];
    if ($_FILES['hinhanh']['name'] != "") {
     $dir = "upload/sanpham/";
     $url = $dir . $hinhanh;
     move_uploaded_file($_FILES['hinhanh']['tmp_name'], $url);
    }
    $sp = new Products();
    $sp->insert($tensp, $hinhanh, $chitietngan, $soluong, $daban, $gia, $khuyenmai, $chitiet, $trangthai, $madm, $dungluong, $mausac, $mota);
   }
   //Cap nhat san pham
   if (isset($_POST['update']) && $_POST['update']) {
    $idsp = $_POST['idsp'];
    $madm = $_POST['madm'];
    $tensp = $_POST['tensp'];
    $gia = $_POST['gia'];
    $daban = $_POST['daban'];
    $chitiet = $_POST['chitiet'];
    $chitietngan = $_POST['chitietngan'];
    $khuyenmai = $_POST['khuyenmai'];
    $trangthai = $_POST['trangthai'];
    $soluong = $_POST['soluong'];
    $dungluong = $_POST['dungluong'];
    $mausac = $_POST['mausac'];
    $mota = $_POST['mota'];
    $hinhanh = $_FILES['hinhanh']['name'];
    if ($_FILES['hinhanh']['name'] != "") {
     $dir = "upload/sanpham/";
     $url = $dir . $hinhanh;
     move_uploaded_file($_FILES['hinhanh']['tmp_name'], $url);
    }
    $sp = new Products();
    $sp->update($tensp, $hinhanh, $chitietngan, $soluong, $daban, $gia, $khuyenmai, $chitiet, $trangthai, $madm, $dungluong, $mausac, $mota, $idsp);
   }
   //Xoa danh muc
   if (isset($_GET['del']) && $_GET['del'] == 1) {
    $idsp = $_GET['idsp'];
    $sp = new Products();
    $sp->delete($idsp);
   }
   include 'admin/sanpham/qlsp.php';
   break;
  case 'qlhd':
   include 'admin/hoadon/qlhd.php';
   break;
  case 'hdct':
   include 'admin/hoadon/hdct.php';
   break;
  case 'qlnd':
   //Thêm người dùng
   if (isset($_POST['add']) && $_POST['add']) {
    $tennd = $_POST['tennd'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $diachi = $_POST['diachi'];
    $dienthoai = $_POST['dienthoai'];
    $phanquyen = $_POST['phanquyen'];
    $nd = new Khachhang();
    $nd->insert($tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen);
   }
   //Cap nhat thong tin nguoi dung
   if (isset($_POST['update']) && $_POST['update']) {
    $tennd = $_POST['tennd'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $diachi = $_POST['diachi'];
    $dienthoai = $_POST['dienthoai'];
    $phanquyen = $_POST['phanquyen'];
    $idnd = $_POST['idnd'];
    $nd = new Khachhang();
    $nd->update($tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen, $idnd);
   }
   include 'admin/nguoidung/qlnd.php';
   break;
  case 'qlbl':
   //Xoa bình luận
   if (isset($_GET['del']) && $_GET['del'] == 1) {
    $mabl = $_GET['mabl'];
    $bl = new Binhluan();
    $bl->delete($mabl);
   }
   include 'admin/binhluan/qlbl.php';
   break;
  case 'qlht':
   //Xoa bình luận
   if (isset($_GET['del']) && $_GET['del'] == 1) {
    $maht = $_GET['maht'];
    $ht = new Hotro();
    $ht->delete($maht);
   }
   include 'admin/hotro/qlht.php';
   break;
  case 'qlbn':
   //them banner
   if (isset($_POST['add']) && $_POST['add']) {
    $hinhanh = $_FILES['img']['name'];
    $trangthai = $_POST['trangthai'];
    if ($_FILES['img']['name'] != "") {
     $dir = "upload/banner/";
     $url = $dir . $hinhanh;
     move_uploaded_file($_FILES['img']['tmp_name'], $url);
    }
    $bn = new Banner();
    $bn->insert($hinhanh, $trangthai);
   }
   //Cap nhat banner
   if (isset($_POST['update']) && $_POST['update']) {
    $hinhanh = $_FILES['img']['name'];
    $trangthai = $_POST['trangthai'];
    $id = $_POST['id'];
    if ($_FILES['img']['name'] != "") {
     $dir = "upload/banner/";
     $url = $dir . $hinhanh;
     move_uploaded_file($_FILES['img']['tmp_name'], $url);
    }
    $bn = new Banner();
    $bn->update($hinhanh, $trangthai, $id);
   }
   //Xoa banner
   if (isset($_GET['del']) && $_GET['del'] == 1) {
    $id = $_GET['id'];
    $bn = new Banner();
    $bn->delete($id);
   }
   include 'admin/banner/qlbn.php';
   break;
  case 'qltt':
   //Them tin tuc
   if (isset($_POST['add']) && $_POST['add']) {
    $content = $_POST['content'];
    $title = $_POST['title'];
    $content_ttct = $_POST['content_ttct'];
    $content = $_POST['content'];
    $ngaydang = date('Y-m-d');
    $img = $_FILES['img']['name'];
    if ($_FILES['img']['name'] != "") {
     $dir = "upload/tintuc/";
     $url = $dir . $img;
     move_uploaded_file($_FILES['img']['tmp_name'], $url);
    }
    $tt = new Tintuc();
    $tt->insert($content, $img, $title, $content_ttct, $ngaydang);
   }
   //Update tin túc
   if (isset($_POST['update']) && $_POST['update']) {
    $idtt = $_POST['idtt'];
    $content = $_POST['content'];
    $title = $_POST['title'];
    $content_ttct = $_POST['content_ttct'];
    $content = $_POST['content'];
    $ngaydang = date('Y-m-d');
    $img = $_FILES['img']['name'];
    if ($_FILES['img']['name'] != "") {
     $dir = "upload/tintuc/";
     $url = $dir . $img;
     move_uploaded_file($_FILES['img']['tmp_name'], $url);
    }
    $tt = new Tintuc();
    $tt->update($content, $img, $title, $content_ttct, $ngaydang, $idtt);
   }
   include 'admin/tintuc/qltt.php';
   break;
  default:
   include 'admin/layout/homepage.php';
   break;
 }
} else {
 include 'admin/layout/homepage.php';
}
include 'admin/layout/admin_footer.php'; //level 0
 
