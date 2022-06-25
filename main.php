<?php
session_start();  //很重要，可以用的變數存在session裡
$username=$_SESSION["account"];
echo "<h1>".$username."</h1>";
echo "<a href='logout.php'>登出</a>";
    
?>