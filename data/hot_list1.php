<?php

 header("content-type:application/json;charset=utf-8");
 require("init.php");
 $sql = "SELECT count(hid) FROM t_hot";
 $result = mysqli_query($conn,$sql);
 $row = mysqli_fetch_row($result);
 $page = ceil($row[0]/8);
 $str = ["page"=>$page];

 echo json_encode($str);
?>