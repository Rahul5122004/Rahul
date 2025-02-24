<?php
include 'db.php'; // Database connection

// Check if a recipe name is provided
$recipe_name = isset($_GET['name']) ? $_GET['name'] : "";

if (!$recipe_name) {
    die("Recipe not found! Please select a recipe.");
}

// Fetch recipe details from the database
$sql = "SELECT * FROM recipes WHERE name = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $recipe_name);
$stmt->execute();
$result = $stmt->get_result();

// Check if a recipe exists
if ($result->num_rows > 0) {
    $recipe = $result->fetch_assoc();
} else {
    die("Recipe not found in the database.");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($recipe_name); ?> Recipe</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="recipe-container">
        <h1><?php echo htmlspecialchars($recipe['name']); ?></h1>
        <img src="<?php echo htmlspecialchars($recipe['image']); ?>" alt="<?php echo htmlspecialchars($recipe['name']); ?>" width="300px">
        
        <h2>Ingredients</h2>
        <ul>
            <?php 
            $ingredients = explode(",", $recipe['ingredients']); // Convert string to array
            foreach ($ingredients as $ingredient) { 
                echo "<li>" . htmlspecialchars(trim($ingredient)) . "</li>";
            }
            ?>
        </ul>

        <h2>Instructions</h2>
        <p><?php echo nl2br(htmlspecialchars($recipe['instructions'])); ?></p>

        <a href="index.html">Back to Home</a>
    </div>
</body>
</html>
<?php
$stmt->close();
$conn->close();
?>
