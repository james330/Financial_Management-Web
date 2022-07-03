<?php
    session_start();  //很重要，可以用的變數存在session裡


    $username=$_SESSION["account"];
    echo "<h1>".$username."</h1>";
    echo "<p><a href='logout.php'>登出</a></p>";
    
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>主介面</title>
    </head>
    <body>
        <p><a href="main.php">
           <img src="sky.jpg" alt="click to main.php" width="200" height="200">
        </a></p>
        
    </body>
</html>
