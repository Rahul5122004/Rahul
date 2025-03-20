<?php
session_start();
include 'db.php';

if (!isset($_SESSION['namee'])) {
    header("Location: admin.html");
    exit();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "DELETE FROM recipes WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo "<script>alert('Recipe deleted successfully!'); window.location.href='adminrecipes.php';</script>";
    } else {
        echo "Error: " . $stmt->error;
    }
} else {
    echo "<script>alert('Invalid request!'); window.location.href='adminrecipes.php';</script>";
}
?>
