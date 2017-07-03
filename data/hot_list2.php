<?php
 header("content-type:application/json;charset=utf-8");
 require("init.php");

 @$pageNo = $_REQUEST['pageNo'];
 if($pageNo===NULL){
    $pageNo = 1;
 }

 $offset = ($pageNo-1)*8;
 $sql = "SELECT * FROM t_hot limit $offset,8";

 $result = mysqli_query($conn,$sql);
 $rows = mysqli_fetch_all($result,MYSQLI_ASSOC);

 $str = json_encode($rows);

 echo $str;
?>