<?php
session_start();
include('../admincp/config/connect.php');
if (isset($_POST['dangnhap'])) {
    $taikhoan = $_POST['taikhoan'];
    $matkhau = md5($_POST['password']);
    $sql = "SELECT * FROM tbl_dangky ,tbl_admin WHERE tbl_dangky.taiKhoan='" . $taikhoan . "' AND tbl_dangky.matKhau='" . $matkhau . "'  LIMIT 1";
    $row = mysqli_query($connect, $sql);
    $count = mysqli_num_rows($row);
    if ($count > 0) {
        $row_data = mysqli_fetch_array($row);
        $_SESSION['dangky'] = $row_data['taiKhoan'];
        $_SESSION['email'] = $row_data['email'];
        $_SESSION['id_khachhang'] = $row_data['id_khachHang'];
        header("Location:../index.php");
    } elseif ($taikhoan == 'admin') {
        header("Location:../admincp/login.php");
    } else {
        $message = "Tài khoản mật khẩu không đúng";
        echo "<script type='text/javascript'>alert('$message');</script>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="css/style_login.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Đăng nhập</title>
    <style>
        html {
            font-family: "Open Sans", sans-serif;
            width: 100vw;
            height: 100vh;
        }

        img {
            width: 100%;
        }

        .login {
            height: vh;
            width: 100%;
            /* background: url(https://codetheweb.blog/assets/img/posts/css-advanced-background-images/cover.jpg) no-repeat center; */
            display: flex;
            justify-content: center;
            position: relative;
        }

        .login_box {
            position: absolute;
            top: 50%;
            transform: translateY(50%);
            width: 400px;
            min-height: 300px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 1px 4px 22px -8px #0004;
            display: flex;
            overflow: hidden;
        }

        .login_box .left {
            box-shadow: 5px 5px 25px 0px rgba(0, 0, 0, 0.75);
            width: 100%;
            height: 100%;
            padding: 20px;
            /* background: url(https://images.pexels.com/photos/3184460/pexels-photo-3184460.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1) no-repeat bottom; */

        }

        .login_box .right {
            width: 59%;
            height: 100%
        }

        .left .top_link a {
            color: #452A5A;
            font-weight: 600;
            display: flex;
            align-items: center;
        }

        .left .top_link {
            height: 20px
        }

        .left .contact {
            display: flex;
            align-items: center;
            justify-content: center;
            align-self: center;
            height: 100%;
            width: 73%;
            margin: auto;
        }

        .left .contact label {
            font-size: 16px;
            font-weight: 700;
        }

        .left h3 {
            text-align: center;
            margin-bottom: 40px;
            font-size: 20px;
        }

        .left input {
            border: 1px solid #aaa;
            width: 100%;
            margin: 20px 15px 15px 0;
            height: 40px;
            border-radius: 5px;
            /* border-bottom: 1px solid #4f30677d; */
            /* padding: 7px 9px; */
            overflow: hidden;
            /* background: transparent; */
            font-weight: 600;
            font-size: 17px;
            outline: none;
            /* color: #00008B; */
        }

        .left input:hover {
            outline: 2px solid #1dbfaf;
            border: none;
        }



        .submit {
            border: none;
            padding: 15px 70px;
            border-radius: 8px;
            display: block;
            margin: auto;
            margin-top: 30px;
            background: #1dbfaf;
            color: #fff;
            width: 100%;
            font-weight: bold;
            -webkit-box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
            -moz-box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
            box-shadow: 0px 9px 15px -11px rgba(88, 54, 114, 1);
        }

        .submit:hover {
            background: #f2726a;
            cursor: pointer;
        }

        .top_link img {
            width: 28px;
            padding-right: 7px;
            /* margin-top: -3px; */
        }
    </style>
</head>

<body>
    <section class="login">
        <div class="login_box">
            <div class="left">
                <div class="top_link"><a href="../index.php"><img src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download" alt="">Về trang chủ</a></div>
                <div class="contact">
                    <form action="" method="POST">
                        <h3>ĐĂNG NHẬP</h3>
                        <label for="taikhoan">Tài khoản</label>
                        <input type="text" name="taikhoan" placeholder="Username">
                        <label for="password">Mật khẩu</label>
                        <input type="password" name="password" placeholder="Password">
                        <button class="submit" name="dangnhap">ĐĂNG NHẬP</button>
                    </form>
                </div>
            </div>
            <!-- <div class="right">
				<div class="right-text">
					<h2>Keyboard Custom</h2>
					<h5>SIÊU XINH</h5>
				</div>
				<div class="right-inductor"><img src="https://lh3.googleusercontent.com/fife/ABSRlIoGiXn2r0SBm7bjFHea6iCUOyY0N2SrvhNUT-orJfyGNRSMO2vfqar3R-xs5Z4xbeqYwrEMq2FXKGXm-l_H6QAlwCBk9uceKBfG-FjacfftM0WM_aoUC_oxRSXXYspQE3tCMHGvMBlb2K1NAdU6qWv3VAQAPdCo8VwTgdnyWv08CmeZ8hX_6Ty8FzetXYKnfXb0CTEFQOVF4p3R58LksVUd73FU6564OsrJt918LPEwqIPAPQ4dMgiH73sgLXnDndUDCdLSDHMSirr4uUaqbiWQq-X1SNdkh-3jzjhW4keeNt1TgQHSrzW3maYO3ryueQzYoMEhts8MP8HH5gs2NkCar9cr_guunglU7Zqaede4cLFhsCZWBLVHY4cKHgk8SzfH_0Rn3St2AQen9MaiT38L5QXsaq6zFMuGiT8M2Md50eS0JdRTdlWLJApbgAUqI3zltUXce-MaCrDtp_UiI6x3IR4fEZiCo0XDyoAesFjXZg9cIuSsLTiKkSAGzzledJU3crgSHjAIycQN2PH2_dBIa3ibAJLphqq6zLh0qiQn_dHh83ru2y7MgxRU85ithgjdIk3PgplREbW9_PLv5j9juYc1WXFNW9ML80UlTaC9D2rP3i80zESJJY56faKsA5GVCIFiUtc3EewSM_C0bkJSMiobIWiXFz7pMcadgZlweUdjBcjvaepHBe8wou0ZtDM9TKom0hs_nx_AKy0dnXGNWI1qftTjAg=w1920-h979-ft" alt=""></div>
			</div> -->
        </div>
    </section>
</body>

</html>