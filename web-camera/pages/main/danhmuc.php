<?php
    // GET id là lấy id từ bên MENU.php 
    $sql_show ="SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhMuc='$_GET[id]' ORDER BY id_sanPham ASC";
    $query_show =mysqli_query($connect,$sql_show);
   
    //get ten danh muc
    $sql_cate ="SELECT * FROM tbl_danhmuc WHERE id_danhMuc='$_GET[id]' LIMIT 1";
    $query_cate =mysqli_query($connect,$sql_cate);
    $row_title =mysqli_fetch_array($query_cate);
?>
<p></p>
<h5> Danh mục |  
    <?php 
            if(isset($row_title['tenDanhMuc'])){
                echo $row_title['tenDanhMuc'];
            }else{
                echo "lỗi không lấy được data";
            }
    ?>

</h5>
<ul class="list">
    <?php
        while($row_pro=mysqli_fetch_array($query_show)){
    ?>
                    <li class="product">
                    <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanPham'] ?>">
                    <img src="admincp/modules/quanlysp/uploads/<?php echo $row_pro['hinhAnh'] ?>" alt="">
                        <div class="info">
                        <h1><?php echo $row_pro['tenSanPham'] ?></h1>
                        <p class="price"><?php echo number_format($row_pro['giaSanPham'],0,',','.').' VNĐ' ?></p>
                        <p style="text-align: center; "><?php echo "Xem chi tiết"?></p>
                        </div>
                    </a>
                </li>
    <?php
        }
    ?>
                   
</ul>
