<?php
include 'db.php'; // Database connection
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $recipe_name = $_POST['recipe_name'];
    $suggestion = $_POST['suggestion'];
    // Update recipe table to store suggestions
    $sql = "UPDATE recipes SET suggestions = CONCAT(IFNULL(suggestions, ''), ?) WHERE name = ?";
    $stmt = $conn->prepare($sql);
    $formatted_suggestion = "\n- " . $suggestion; // Add a bullet point format
    $stmt->bind_param("ss", $formatted_suggestion, $recipe_name);
    if ($stmt->execute()) {
        echo "<script>alert('✅ Suggestion submitted successfully!'); window.location.href='home.html';</script>";
    } else {
        echo "<p>❌ Error submitting suggestion: " . $conn->error . "</p>";
    }
    $stmt->close();
    $conn->close();
}
?>