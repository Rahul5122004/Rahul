<?php
session_start();
include 'db.php';

if (!isset($_SESSION['namee'])) {
    header("Location: admin.html");
    exit();
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "SELECT * FROM recipes WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    $stmt->execute();
    $result = $stmt->get_result();
    $recipe = $result->fetch_assoc();

    if (!$recipe) {
        echo "<script>alert('Recipe not found!'); window.location.href='adminrecipes.php';</script>";
        exit();
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = $_POST['name'];
        $description = $_POST['image'];
        $ingredients = $_POST['ingredients'];
        $instructions = $_POST['instructions'];
        $video_url=$_POST['video_url'];
        $suggesstion=$_POST['suggestions'];

        $updateSQL = "UPDATE recipes SET name=?, image=?, ingredients=?, instructions=?, video_url=?, suggestions=? WHERE id=?";
        $stmt = $conn->prepare($updateSQL);
        $stmt->bind_param("ssssssi", $name, $description, $ingredients, $instructions,  $video_url, $suggesstion,  $id);

        if ($stmt->execute()) {
            echo "<script>alert('Recipe updated successfully!'); window.location.href='adminrecipes.php';</script>";
        } else {
            echo "Error: " . $stmt->error;
        }
    }
} else {
    echo "<script>alert('Invalid request!'); window.location.href='adminrecipes.php';</script>";
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Recipe</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Edit Recipe</h1>
    <form method="POST">
        <textarea name="name" placeholder="Recipe Name" required><?php echo htmlspecialchars($recipe['name']); ?></textarea>
        <textarea name="image" placeholder="RecipeImg Path" required><?php echo htmlspecialchars($recipe['image']); ?></textarea>
        <textarea name="ingredients" placeholder="Ingredients"  required><?php echo htmlspecialchars($recipe['ingredients']); ?></textarea>
        <textarea name="instructions" placeholder="instructions" required><?php echo htmlspecialchars($recipe['instructions']); ?></textarea>
        <textarea name="video_url" placeholder="RecipeVideo Url" required><?php echo htmlspecialchars($recipe['video_url']); ?></textarea>
        <textarea name="suggestions" ><?php echo htmlspecialchars($recipe['suggestions']); ?></textarea>
        <button type="submit">Update Recipe</button>
    </form>
</body>
</html>