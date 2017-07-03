<?php
	@$n=$_REQUEST['uname'];
	@$e=$_REQUEST['email'];
	@$u=$_REQUEST['upwd'];
	if(empty($n) || empty($u)||empty($e)){
          echo '[]';
          return;
        }
	require('init.php');
	$sql="INSERT INTO t_user VALUES(null,'$n','$e','$u',now());";
	$result=mysqli_query($conn,$sql);
	if($result===true){
		echo "添加成功";
	}else{
		echo "用户添加失败";
	}
?>