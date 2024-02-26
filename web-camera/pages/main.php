


<div class="main">
           
            <div id="container">
              
                <?php //lấy qiamly từ menu truyền vào bằng phuongư thức GET
                        if(isset($_GET['quanly'])){
                            $bientam=$_GET['quanly'];

                        }else{
                            $bientam="";
                        }
                        if ($bientam=='danhmuclist'){
                            include("main/danhmuc.php");
                        }elseif ($bientam=='giohang'){ 
                            include("main/giohang/cart.php");
                        }elseif ($bientam=='dangky'){ 
                            // include("main/dangky.php");
                            header("Location:signin/signin.php");                          
                        }elseif ($bientam=='contact'){ 
                            include("main/contact.php");
                        }elseif ($bientam=='sanpham'){ 
                            include("main/sanpham.php");                    
                        }elseif ($bientam=='dangnhap'){
                            // include("user/loginuser.php");
                            header("Location:user/loginuser.php");                          
                        }elseif ($bientam=='thongtin'){ 
                            include("main/info.php");
                        }elseif ($bientam=='timkiem'){ 
                            include("main/timkiem.php");
                            
                        
                        }else{ 
                            include("main/index.php");
                        }
 ?>
                
            </div>
        </div>



