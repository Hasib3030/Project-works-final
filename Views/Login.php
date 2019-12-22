<!--CSS Code for empty Username or Password-->
<style>
    .errMsg
 {
     font-family: Verdana;
     font-size: 15px;
     color: white;
     background-color : blue;
     height: 25px;
     width: 200px;
     border: 1px solid red;
     border-radius: 5px;
     transition-duration: 0.5s;
 }

 .invalid_User_Pass
 {
     height : 25px;
     width : 100%;
     background-color : rgb(185,126,15);
     transition-duration:0.5s;
     border-radius:5px;
     /*border:2px solid red;*/
 }
 .invalid_User_Pass:hover
 {
     border:2px solid red;
     font-size:18px;
     border-radius : 10px;
     cursor:pointer;
 }
 
</style>

<?php
    session_start();
    sleep(3);
    $errUsername = null;
    $errPassword = null;
    $errInvalid = null;
    if(isset($_POST['submit']))
    {
        $uname = $_POST['Username'];
        $pass = $_POST['Password'];
       
        /*if(empty($uname) == true)
        {
            
           $errUsername =   "<div class=\"errMsg\">Empty Username </div>";
           
        }
        else
        {
            if(empty($pass) == true)
            {
                $errPassword =   "<div class=\"errMsg\">Empty Password </div>";
            }
            else
            {
                header('location:../php/LoginCheck.php');
                if(isset($_GET['msg']))
                {
                    $errInvalid = "<div class=\"invalid_User_Pass\">Invalid Username or Password</div>";
                }
            }
        }*/
        
    }

?>

<script>
    function loginValueCheck()
    {
        var  username = document.getElementById('idUsername').value;
        var password = document.getElementById('idPassword').value;
        alert("username");

        if(username == "")
        {
            alert("Empty Username not Accepted!");
            else
            {
                if(password == "")
                {
                    alert("Empty Password not Accepted");
                }
            }
        }
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="Stylesheet" href="App.css">
    <title>Login</title>
    <!--Background Image CSS-->
    <style type="text/css">
        body
        {
            background-image: url(../bg.jpg);
            background-size: cover;
        }
    </style>
</head>
<body>
    <table border="0" class="table" width="320px" height="400px">
        <form method="POST" action="../php/LoginCheck.php">
        <!--<form method="POST" action="#">-->
        <tr>
            <td>
                <center>
                    <h3><u>USER LOGIN</u></h3>
                </center>
            </td>
        </tr>
        <tr>  
            <td>
                <input type="text" class="login-input" placeholder="Username" name="Username" id= "idUsername"> <?php echo $errUsername ?>
            </td>
            
        </tr>
        <tr>
            <td>
                <input type="password" class="login-input" placeholder="Password" name="Password" id= "idPassword"> <?php echo $errPassword ?>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Login" class="login-button" name="submit" onclick="loginValueCheck()">
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <?php echo $errInvalid ?>
                </center>
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <a href="#" class="login-link">Forgot Password?</a>
                </center>
            </td>
        </tr>
        <tr>
            <td>
                <center>
                    <a href="Registration.php" class="login-link">Create Account</a>
                </center>
            </td>
        </tr>
        
    </form>
    </table>
</body>
</html>