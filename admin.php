<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = trim($_POST['namee']); // Trim spaces
    $password = trim($_POST['pass']);

    if (empty($username) || empty($password)) {
        echo "<script>alert('Both fields are required!'); window.location.href='admin.html';</script>";
        exit();
    }

    // Database Connection
    $host = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "sign";

    $conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    // Check if user exists
    $sql = "SELECT * FROM admins WHERE namee = ? AND pass = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows == 1) {
        $_SESSION['namee'] = $username;
        echo "<script>alert('Welcome'); window.location.href='adminrecipes.php';</script>";
        exit();
    } else {
        echo "<script>alert('Invalid Admin Name or Password'); window.location.href='admin.html';</script>";
    }

    $stmt->close();
    $conn->close();
}
?>
