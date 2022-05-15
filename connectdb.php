<?php
// 連線至資料庫
$dbServer="127.0.0.1";
$dbUser="root";
$dbPass="";
$dbName="financial_management";

$conn = new mysqli($dbServer, $dbUser, $dbPass, $dbName);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";
?>