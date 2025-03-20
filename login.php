<?php
ob_start();  // Start output buffering
session_start();  // Start the session

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form data
    $username = $_POST['usernam'];
    $password = $_POST['passwords'];

    // Check if the fields are empty
    if (empty($username) || empty($password)) {
        echo "<script>alert ('Both fields are Required!');window.location.href='login.html';</script>";
        exit(); // Stop further processing
    }

    // Database connection details
    $host = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "sign";

    // Create database connection
    $conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

    // Check for connection errors
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare the SQL query to check the user's credentials
    $SELECT = "SELECT * FROM signup WHERE user = ? AND pass1 = ? LIMIT 1";
    
    // Prepare the statement
    $stmt = $conn->prepare($SELECT);
    if (!$stmt) {
        die("SQL prepare failed: " . $conn->error);
    }

    // Bind parameters to the prepared statement
    $stmt->bind_param("ss", $username, $password);
    // Execute the statement
    $stmt->execute();
    $stmt->store_result();

    // Check if a matching record is found
    if ($stmt->num_rows == 1) {
        // Valid user, create session and redirect to home.html
        $_SESSION['user'] = $username;  // Store username in session
        echo "<script>alert ('SignIn Successfully!');window.location.href='home.html';</script>";
    }
    else {
        // Invalid credentials
        echo "<script>alert ('Username or Password Incorrect');window.location.href='login.html';</script>";
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
}

ob_end_flush();  // End output buffering and flush the output
?>
