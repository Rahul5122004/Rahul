<?php
include 'db.php'; // Database connection
if (!isset($_SESSION['namee'])) {
    // Fetch all recipes from the database
    $sql = "SELECT * FROM recipes";
    $result = $conn->query($sql);
} else {
    // Redirect to the admin login page if accessed directly
    header("Location: admin.html");
    exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Manage Recipes</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <center>
    <h1>Manage Recipes</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Options</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()) { ?>
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
</body>
</html>