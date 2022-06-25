<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>會員註冊</title>
        <script>
            function validateForm() {
                var x = document.forms["registerForm"]["password"].value;
                var y = document.forms["registerForm"]["password_check"].value;
                var z = document.forms["registerForm"]["account"].value;
                if(z.length<1){
                    alert("帳號長度不足");
                    return false;
                }
                if(x.length<1){
                    alert("密碼長度不足");
                    return false;
                }
                if(x != y){
                    alert("請確認密碼是否輸入正確");
                    return false;
                }
                
            }
        </script>    
    </head>
    <body>
        <h1>註冊頁面</h1>
            <form name="registerForm"  method="post" action="checkRegister.php" onsubmit="return validateForm()">
                帳  號：
                    <input type="text" name="account" id="account"><br/><br/>
                密  碼：
                    <input type="password" name="password" id="password"><br/><br/>
                確認密碼：
                    <input type="password" name="password_check" id="password_check"><br/><br/>
                信箱：
                    <input type="email" name = 'email'><br/><br/>
                    <input type="submit" value="註冊" name="submit">
                    <input type="reset" value="重設" name="submit">
            </form>
        <a href='index.php'>返回</a>
    </body>
</html>