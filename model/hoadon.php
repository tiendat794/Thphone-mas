<?php

class Hoadon extends ThaoTac {

 //Lấy danh sách hóa đơn
 function getList() {
  $select = "select * from hoadon order by mahd desc";
  $result = parent::pdo_query($select);
  return $result;
 }

//Lấy hóa đơn chi tiết
 function getBillById($mahd) {
  $select = "select * from chitiethoadon where mahd = $mahd";
  $result = parent::pdo_query($select);
  return $result;
 }
//Lay gia tung loai san pham, thu tinh nang ban do
 function getProductArray(){
  $select = "select idsp,gia from sanpham order by idsp desc";
  $result = parent::pdo_query($select);
  return $result;
 }
}
?>

