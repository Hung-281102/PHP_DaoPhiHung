<?php
	if(isset($_POST['timkiem'])){
		$tukhoa = $_POST['tukhoa'];
	}
	$sql_pro = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhMuc=tbl_danhmuc.id_danhMuc 
	AND tbl_sanpham.tenSanPham LIKE '%".$tukhoa."%'";
	$query_pro = mysqli_query($connect,$sql_pro);
	
?>
<h3>Từ khoá tìm kiếm : <?php echo $_POST['tukhoa']; ?></h3>
	<ul class="list">
		<?php
		while($row = mysqli_fetch_array($query_pro)){ 
		?>
		<li class="product">
			<a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanPham'] ?>">
				<img src="admincp/modules/quanlysp/uploads/<?php echo $row['hinhAnh'] ?>">
				<div class="info">
                        <h1><?php echo $row['tenSanPham'] ?></h1>
                        <p class="price"><?php echo number_format($row['giaSanPham'],0,',','.').' VNĐ' ?></p>
                        <p style="text-align: center; "><?php echo "Xem chi tiết"?></p>
                </div>
			</a>
		</li>
		<?php
		} 
		?>
	</ul>