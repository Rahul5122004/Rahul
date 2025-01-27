<?php
$user = $_POST['user'];
$email = $_POST['email'];
$num = $_POST['num'];
$pass1 = $_POST['pass1'];
$pass2 = $_POST['pass2'];

if (!empty($user) && !empty($email) && !empty($num) && !empty($pass1) && !empty($pass2) )
{

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "project";

// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
if (mysqli_connect_error()){
  die('Connect Error ('. mysqli_connect_errno() .') '
    . mysqli_connect_error());
}
else{
  $SELECT = "SELECT email From signup Where email = ? Limit 1";
  $INSERT = "INSERT Into signup (user,email,num,pass1,pass2 )values(?,?,?,?,?)";
//Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $rnum = $stmt->num_rows;
     //checking username
      if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("sssss", $user,$email,$num,$pass1,$pass2);
      $stmt->execute();
      if($pass1==$pass2)
      {
        echo "Record insert Successfully!";
      }
      else
      {
        echo "Retype the Password from the above you type";
      }
     } else {
      echo "Someone already register using this email";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>