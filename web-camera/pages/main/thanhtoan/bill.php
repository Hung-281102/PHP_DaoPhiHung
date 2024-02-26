<?php
$kn = mysqli_connect('localhost', 'root', '', 'web_camera');
if (!$kn) {
	echo 'Ket noi that bai';
}

// $sql_ship = 'SELECT * FROM tbl_shipping';

$sql_ship = "SELECT * FROM tbl_dangky ";
$sql_sp = 'SELECT * FROM tbl_sanpham';
$sql_cart = 'SELECT tbl_cart_detail.id_cart_detail, tbl_cart_detail.code_cart, tbl_giohang.id_khachHang,tbl_sanpham.id_sanPham,soLuongMua,tenSanPham,giaSanPham FROM tbl_giohang INNER JOIN tbl_cart_detail ON tbl_giohang.code_cart = tbl_cart_detail.code_cart INNER JOIN tbl_sanpham ON tbl_sanpham.id_sanPham = 
        tbl_cart_detail.id_sanPham order by id_cart_detail DESC limit 1';

$kq_ship = mysqli_query($kn, $sql_ship);
$kq_sp = mysqli_query($kn, $sql_sp);
$kq_cart = mysqli_query($kn, $sql_cart);

$row_ship = mysqli_fetch_row($kq_ship);
$row_sp = mysqli_fetch_row($kq_sp);
$row_cart = mysqli_fetch_row($kq_cart);

?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<style>
		body {
			background: #eee;
			/* margin-top:20px; */
		}

		.text-danger strong {
			color: #9f181c;
		}

		.receipt-main {
			background: #ffffff none repeat scroll 0 0;
			border-bottom: 12px solid #333333;
			border-top: 12px solid #9f181c;
			margin-top: 50px;
			margin-bottom: 50px;
			padding: 40px 30px !important;
			position: relative;
			box-shadow: 0 1px 21px #acacac;
			color: #333333;
			font-family: open sans;
		}

		.receipt-main p {
			color: #333333;
			font-family: open sans;
			line-height: 1.42857;
		}

		.receipt-footer h1 {
			font-size: 15px;
			font-weight: 400 !important;
			margin: 0 !important;
		}

		.receipt-main::after {
			background: #414143 none repeat scroll 0 0;
			content: "";
			height: 5px;
			left: 0;
			position: absolute;
			right: 0;
			top: -13px;
		}

		.receipt-main thead {
			background: #414143 none repeat scroll 0 0;
		}

		.receipt-main thead th {
			color: #fff;
		}

		.receipt-right h5 {
			font-size: 16px;
			font-weight: bold;
			margin: 0 0 7px 0;
		}

		.receipt-right p {
			font-size: 12px;
			margin: 0px;
		}

		.receipt-right p i {
			text-align: center;
			width: 18px;
		}

		.receipt-main td {
			padding: 9px 20px !important;
		}

		.receipt-main th {
			padding: 13px 20px !important;
		}

		.receipt-main td {
			font-size: 13px;
			font-weight: initial !important;
		}

		.receipt-main td p:last-child {
			margin: 0;
			padding: 0;
		}

		.receipt-main td h2 {
			font-size: 20px;
			font-weight: 900;
			margin: 0;
			text-transform: uppercase;
		}

		.receipt-header-mid .receipt-left a {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
			text-decoration: none;
			float: right;
			margin-left: 20px;
		}

		.receipt-header-mid .receipt-left a:hover {
			font-weight: 100;
			margin: 34px 0 0;
			text-align: right;
			text-transform: uppercase;
			text-decoration: none;
			float: right;
			margin-left: 20px;
			color: red;
			cursor: pointer;
		}

		.receipt-header-mid {
			margin: 24px 0;
			overflow: hidden;
		}

		#container {
			background-color: #dcdcdc;
		}

		#bill {
			display: flex;
			justify-content: center;
			align-items: center;
		}

		.d {
			text-transform: lowercase;
			color: gray;
			font-size: 10px;
			text-decoration-line: underline
		}
	</style>
</head>

<body>
	<div class="col-md-12" id="bill">
		<div class="row">
			<div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
				<div class="row">
					<div class="receipt-header">
						<div class="col-xs-6 col-sm-6 col-md-6">
							<div class="receipt-left">
								<img class="img-responsive" alt="iamgurdeeposahan" src="https://bootdey.com/img/Content/avatar/avatar6.png" style="width: 71px; border-radius: 43px;">
							</div>
						</div>
						<div class="col-xs-6 col-sm-6 col-md-6 text-right">
							<div class="receipt-right">
								<h5>Camera Company.</h5>
								<p>+8412345678<i class="fa fa-phone"></i></p>
								<p>WebsiteCamera@gmail.com <i class="fa fa-envelope-o"></i></p>
								<p>Việt Nam<i class="fa fa-location-arrow"></i></p>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="receipt-header receipt-header-mid">
						<div class="col-xs-8 col-sm-8 col-md-8 text-left">
							<div class="receipt-right">
								<h5>Name:<?php echo $row_ship[1] ?> </h5>
								<p><b>Phone : </b><?php echo $row_ship[4] ?></p>
								<p><b>Email : </b><?php echo $row_ship[5] ?></p>
								<p><b>Address : </b> <?php echo $row_ship[6] ?></p>
								<p><b>Note : </b> </p>
							</div>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4">
							<div class="receipt-left">
								<h3>INVOICE # <?php echo $row_cart[0] ?></h3>
							</div>
						</div>
					</div>
				</div>

				<div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Sản phẩm</th>
								<th>Số lượng</th>
								<th>Đơn giá</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="col-md-9">
									<h3 style="text-align: center;"><?php echo $row_cart[5] ?></h3>
								</td>
								<td class="col-md-9">
									<h3 style="text-align: center;"><?php echo $row_cart[4] ?></h3>
								</td>
								<td class="col-md-9">
									<h3 style="text-align: center;"><?php echo $row_cart[6] ?><sub class="d">đ</sub></h3>
								</td>
							</tr>
							<tr>
								<td class="text-right">
									<p>
										<strong>Thành tiền: </strong>
									</p>
									<p>
										<strong>Voucher: </strong>
									</p>
									<p>
										<strong>Tiền ship: </strong>
									</p>
								</td>
								<td>
									<p>
										<strong><i class="fa fa-inr"></i><?php echo $row_cart[4] * $row_cart[6] ?><sub class="d">đ</sub></strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i>0<sub class="d">đ</sub></strong>
									</p>
									<p>
										<strong><i class="fa fa-inr"></i> 15000<sub class="d">đ</sub></strong>
									</p>
								</td>
							</tr>
							<tr>

								<td class="text-right">
									<h2><strong>Tổng tiền: </strong></h2>
								</td>
								<td class="text-left text-danger">
									<h2><strong><i class="fa fa-inr"></i> <?php echo $row_cart[4] * $row_cart[6] + 15000 ?><sub class="d">đ</sub></strong></h2>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="row">
					<div class="receipt-header receipt-header-mid receipt-footer">
						<div class="col-xs-8 col-sm-8 col-md-8 text-left">
							<div class="receipt-right">
								<p><b>Date :</b> <?php echo date("d/m/Y") ?></p>
								<br>
								<h5 style="color: rgb(140, 140, 140);">Thanks for shopping.!</h5>
							</div>
						</div>
						<div class="col-xs-4 col-sm-4 col-md-4">
							<div class="receipt-left">
								<a href="exportBill.php">In Bill</a>
								<a href="../../../index.php">Trang chủ</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>

</html>