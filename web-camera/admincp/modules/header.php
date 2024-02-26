<?php
	if(isset($_GET['dangxuat'])&&$_GET['dangxuat']==1){
		unset($_SESSION['dangnhap']);
		header('Location:login.php');
	}
?>
<p 	style="float:right;  border:1px solid green; padding:5px 5px 5px 5px; width:140px;border-radius:10px;background-color:rgb(255,103,103);"><a style=" 
 text-decoration: none;color:black; font-size: 18px;" href="index.php?dangxuat=1"><b>Đăng xuất :</b>
<?php if(isset($_SESSION['dangnhap'])){
		echo $_SESSION['dangnhap'];
		
	} ?> 
</a></p>