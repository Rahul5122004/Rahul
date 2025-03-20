<?php
session_start();
include 'db.php'; // Ensure database connection

// Check if admin is logged in
if (!isset($_SESSION['namee'])) {
    header("Location: admin.html");
    exit();
}

// Check if email is provided
if (isset($_GET['email'])) {
    $userEmail = urldecode($_GET['email']);

    // Connect to the project database
    $databaseConn = new mysqli("localhost", "root", "", "project");

    if ($databaseConn->connect_error) {
        die("Connection to project database failed: " . $databaseConn->connect_error);
    }

    // Delete user query
    $deleteQuery = "DELETE FROM signup WHERE email = ?";
    $stmt = $databaseConn->prepare($deleteQuery);
    $stmt->bind_param("s", $userEmail);

    if ($stmt->execute()) {
        echo "<script>alert('User deleted successfully!'); window.location.href='adminrecipes.php';</script>";
    } else {
        echo "<script>alert('Error deleting user!'); window.location.href='adminrecipes.php';</script>";
    }

    $stmt->close();
    $databaseConn->close();
} else {
    echo "<script>alert('Invalid request!'); window.location.href='adminrecipes.php';</script>";
}
?>