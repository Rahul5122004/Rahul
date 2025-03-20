<?php
$user = $_POST['user'];
$email = $_POST['email'];
$num = $_POST['phone'];
$pass1 = $_POST['pass1'];
$pass2 = $_POST['pass2'];

if (!empty($user) && !empty($email) && !empty($num) && !empty($pass1) && !empty($pass2)) {

    $host = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "sign";

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
        echo "<script>alert ('Username is already taken!');window.location.href='signup.html';</script>";
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
        echo "<script>alert ('Email is already registered!');window.location.href='signup.html';</script>";
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    // Check if the phone number is already registered
    $stmt = $conn->prepare("SELECT phone FROM signup WHERE phone = ?");
    $stmt->bind_param("s", $num);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        echo "<script>alert ('Phone number is already registered!');window.location.href='signup.html';</script>";
        $stmt->close();
        $conn->close();
        exit();
    }
    $stmt->close();

    if ($pass1 === $pass2) {
        // Prepare the SQL query
        $INSERT = "INSERT INTO signup (user, email, phone, pass1) VALUES (?, ?, ?, ?)";
        $stmt = $conn->prepare($INSERT);
    
        // Bind the parameters to the query
        $stmt->bind_param("ssss", $user, $email, $num, $pass1);
    
        // Execute the query
        if ($stmt->execute()) {
            echo "<script>alert('Successfully Registered!'); window.location.href='login.html';</script>";
        } else {
            echo "<script>alert('Error during registration. Please try again.'); window.location.href='signup.html';</script>";
        }
        exit();
    } else {
        // If passwords don't match, show an alert and redirect to signup page
        echo "<script>alert('Passwords do not match! Please retype the password correctly.'); window.location.href='signup.html';</script>";
    }
    
    $stmt->close();
    $conn->close();

} else {
    echo "All fields are required!";
}
?>