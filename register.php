<?php
//註冊介面
require_once('connectdb.php');
if(empty($_POST['account'])){
    die('請輸入account');
}
$account = $_POST['account'];
$password = $_POST['password'];
$email = $_POST['email'];
//找到最大的UID，並+1
$result = $conn -> query('select UID from user_info ORDER BY UID DESC');
$row = $result -> fetch_assoc();
$UID = $row['UID'] + 1;
//放入資料表中
$sql = sprintf(
    'insert into user_info(UID ,account ,password ,email) values(? ,? ,? ,?)'
);
$result = $conn -> prepare($sql);
$result -> bind_param("ssss" ,$UID ,$account ,$password ,$email);
$result -> execute();
if(!$result){
    die($conn -> error);
}

header('Location: index.php');

?>