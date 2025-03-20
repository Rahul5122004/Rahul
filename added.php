<?php
session_start();
// Connect to food_recipes database (for recipes)
$recipesConn = new mysqli("localhost", "root", "", "food_recipes");
if (!isset($_SESSION['namee'])) {
    header("Location: admin.html");
    exit();
}

// Fetch user details from sign.signup table
$recipeQuery = "SELECT rcname, rcdes, rcing, rcins, ddd  FROM userrecipes";
$recipeResult = $recipesConn->query($recipeQuery);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Added Recipes By User's</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Recipes</h2>
    <center>
<table border="2">
        <tr>
            <th>Recipes Name</th>
            <th>Description</th>
            <th>Ingredients</th>
            <th>Instruction</th>
            <th>Video Link</th>
        </tr>
        <?php while ($row = $recipeResult->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['rcname']; ?></td>
            <td><?php echo $row['rcdes']; ?></td>
            <td><?php echo $row['rcing']; ?></td>
            <td><?php echo $row['rcins']; ?></td>
            <td><?php echo $row['ddd']; ?></td>
        </tr>
        <?php } ?>
    </table>
        </center>