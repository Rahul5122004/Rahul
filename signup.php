<?php
$user = $_POST['user'];
$email = $_POST['email'];
$num = $_POST['num'];
$pass1 = $_POST['pass1'];
$pass2 = $_POST['pass2'];

if (!empty($user) && !empty($email) && !empty($num) && !empty($pass1) && !empty($pass2)) {

    $host = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "project";

    // Create connection
    $conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Check if the username is already taken
    $stmt = $conn->prepare("SELECT user FROM signup WHERE user = ?");
    $stmt->bind_param("s", $user);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        echo "Username is already taken!";
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    // Check if the email is already registered
    $stmt = $conn->prepare("SELECT email FROM signup WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        echo "Email is already registered!";
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    // Check if the phone number is already registered
    $stmt = $conn->prepare("SELECT num FROM signup WHERE num = ?");
    $stmt->bind_param("s", $num);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        echo "Phone number is already registered!";
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    // Check if passwords match before inserting
    if ($pass1 === $pass2) {
        $INSERT = "INSERT INTO signup (user, email, num, pass1) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($INSERT);
        $stmt->bind_param("ssss", $user, $email, $num, $pass1);
        $stmt->execute();     
        // ✅ Redirect to signin.html after successful registration
        header("Location: login.html");
        exit();
    } else {
        echo "Passwords do not match! Please retype the password correctly.";
    }

    $stmt->close();
    $conn->close();

} else {
    echo "All fields are required!";
}
?>
