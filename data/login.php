<?php
	@$uname=$_REQUEST['uname'];
	@$upwd=$_REQUEST['upwd'];
	if(empty($uname) || empty($upwd)){
      echo '[]';
      return;
    }
	require('init.php');
	$sql="SELECT * FROM t_user WHERE uname='$uname' AND upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_assoc($result);
	if($row){
		echo '登录成功';
	}else{
		echo '用户名或密码错误';
	}
?>