<?php
session_start();
// Connect to food_recipes database (for recipes)
$recipesConn = new mysqli("localhost", "root", "", "food_recipes");

// Connect to sign database (for signup details)
$usersConn = new mysqli("localhost", "root", "", "sign");

// Check if admin is logged in
if (!isset($_SESSION['namee'])) {
    header("Location: admin.html");
    exit();
}

// Fetch user details from sign.signup table
$userQuery = "SELECT user, email, phone, pass1 FROM signup";
$userResult = $usersConn->query($userQuery);

// Fetch all recipes from food_recipes.recipes table
$recipeQuery = "SELECT id, name FROM recipes ORDER BY id ASC";
$recipeResult = $recipesConn->query($recipeQuery);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Users & Recipes</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Admin Dashboard</h1>
    

    <center>
    <!-- User Details Section -->
    <h2>User's Details</h2>
    <table border="1">
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Password</th>
            <th>Option</th>
        </tr>
        <?php while ($row = $userResult->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['user']; ?></td>
            <td><?php echo $row['email']; ?></td>
            <td><?php echo $row['phone']; ?></td>
            <td><?php echo $row['pass1']; ?></td>
            <td>
                <a href="delete_user.php?email=<?php echo $row['email']; ?>" onclick="return confirm('Are you sure you want to delete this user?')">Delete</a>
            </td>
        </tr>
        <?php } ?>
    </table>
    <a href="added.php?">View Recipes Added by User's</a> 

    <!-- Manage Recipes Section -->
    <h2>Manage Recipes</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Options</th>
        </tr>
        <?php while ($row = $recipeResult->fetch_assoc()) { ?>
        <tr>
            <td><?php echo $row['id']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td>
                <a href="edit_recipe.php?id=<?php echo $row['id']; ?>">View/Edit</a>
                <a href="delete_recipe.php?id=<?php echo $row['id']; ?>" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
        <?php } ?>
    </table>
    </center>
</body>
</html>