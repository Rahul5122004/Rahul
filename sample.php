<?php
include 'db.php'; // Include database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $recipe_name = $_POST['rcname'];
    $description = $_POST['rcdes'];
    $ingredients = $_POST['rcing'];
    $method = $_POST['rcins'];
    $ddd=$_POST['ddd'];
    
    // Insert into database
    $sql = "INSERT INTO userrecipes (rcname, rcdes, rcing, rcins, ddd) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssss", $recipe_name, $description, $ingredients, $method,$ddd);
    
    if ($stmt->execute()) {
        echo "<script>alert('Recipe Added successfully!'); window.location.href='home.html';</script>";
    } else {
        echo "Error: " . $stmt->error;
    }
    
    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Recipe</title>
    <link rel="stylesheet" href="loginsignup.css">
</head>
<body>
    <div class="container">
    <h2>Add a New Recipe</h2>
    <form method="POST">
        <input type="text" name="rcname" placeholder="Recipe Name" required><br><br>

        <input type="text" name="rcdes" placeholder="Description" required><br><br>

        <input type="text" name="rcing" placeholder="Ingredients" required><br><br>

        <input type="text" name="rcins" placeholder="Instruction" required><br><br>

        <input type="text" name="ddd" placeholder="Video Link"><br><br>
        
        <button type="submit">Add Recipe</button>
    </form>
</div>
</body>
</html>
