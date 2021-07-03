<!doctype html>

<html lang="en">

<?php
  require_once('db_config.php'); 
  $conn = new mysqli($servername, $username, $password, $dbname);
  if ($conn->connect_errno) {
        printf("Connect failed: %s\n", $conn->connect_error);
      exit();
  }

?>

<!tutorial>
<html>
<head>
<link rel="stylesheet" href="style.css"></link>
<title>Login</title>

<h2 align="center" class="h" style="color:red">Welcome to LOGIN</h2>
</head>
<body id="b">
<center>
<div id="d" style="background-image: url(login.jfif); min-height: 100vh;">


<center><form action="login.php" method="POST">

<b><label>Email</label>
<input name="email" type="email" id="form" placeholder="Enter your email" required>
</input>
<br><br>
<b><label>Password</label>
<input name="pass" type="password" id="form" placeholder="Enter your Password" required>
</input>

<!button work>
<br><br>


<a href="home.php"><input name="login" type="button" id="button" value="LOG IN">
</input>
<br><br>

<a href="user.html"><input name="reg" type="button" id="button" value="REGISTER">
</input>
<br><br>

</form></center>

</center>



<?php

    if(isset($_POST['login'])){
  
  $email= $_POST['email'];
  $pass=$_POST['pass'];
  
  $check = "select*from user where email='$email' AND password ='$pass'";
  $check_work= mysqli_query($con,$check);
  
  if($check_work){
   if(mysqli_num_rows($check_work) > 0 ){
    
    echo"
    <script>
    alert('You are Successfully  Logged in');
    window.location.href='home.php';
    </script>
    ";
    
   }else{
    
    echo"
    <script>
    alert('Password or Email not Found ');
    window.location.href('register.php');
    </script>
    ";
   }
   
   
  }else{
   
   
    echo"
    <script>
    alert('Database Error  ');
    window.location.href('register.php');
    </script>
    ";
  }
  
  
  
 }else{
  
  
 }





?>



</div>
</body>

</html>
