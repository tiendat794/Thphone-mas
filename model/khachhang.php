<?php

class Khachhang extends ThaoTac {

 function getKh($id) {
  $sql = "Select * from khachhang where idnd=$id ";
  $stmt = parent::pdo_query_one($sql, $id);
  return $stmt;
 }

 function checklogin($password, $username) {
  $sql = "SELECT * FROM khachhang where password='" . $password . "' and username='" . $username . "'";
  $smt = parent::pdo_query_one($sql, $password, $username);
  return $smt;
 }

 function user_res_insert($tennd, $username, $email, $dienthoai, $diachi, $password) {
  $sql = "INSERT INTO khachhang (tennd,username,email,dienthoai,diachi,password,phanquyen) VALUES ('$tennd','$username','$email','$dienthoai','$diachi','$password',1)";
  $stmt = parent::pdo_execute($sql);
  return $sql;
 }

 //Lấy danh sách người dùng 
 function getList() {
  $sql = "select * from khachhang order by idnd desc";
  $stmt = parent::pdo_query($sql);
  return $stmt;
 }

//Lấy người dùng dựa vào idnd
 function getListById($idnd) {
  $sql = "select * from khachhang where idnd=$idnd";
  $stmt = parent::pdo_query_one($sql);
  return $stmt;
 }

//them tai khoan
 function insert($tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen) {
  $query = "insert into khachhang(tennd,username,password,email,diachi,dienthoai,phanquyen) ";
  $query .= "values(?,?,?,?,?,?,?)";
  parent::pdo_execute($query, $tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen);
 }

 //cap nhat tai khoan
 function update($tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen, $idnd) {
  $query = "UPDATE khachhang SET tennd=?,username=?,password=?,email=?,diachi=?"
          . ",dienthoai=?,phanquyen=? WHERE idnd=?";
  parent::pdo_execute($query, $tennd, $username, $password, $email, $diachi, $dienthoai, $phanquyen, $idnd);
 }

}

?>