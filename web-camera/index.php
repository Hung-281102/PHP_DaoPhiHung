<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../web-camera2/css/style.css">
    <link rel="stylesheet" href="../web-camera2/css/style_detal.css">
    <link rel="stylesheet" href="./web-camera2/css/style_cart.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Shop camera</title>
</head>
<body>
    <div class="wraper">
        <?php
            session_start();
            include("admincp/config/connect.php");   
            include("pages/menu.php");
            include("pages/header.php");
            include("pages/main.php"); 
            include("pages/footer.php");
        ?>
       
    </div>
</body>
</html>