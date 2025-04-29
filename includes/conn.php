<?php
$servername = "localhost"; // Use 'localhost' or '127.0.0.1'
$username = "root";        // Default MySQL username in XAMPP
$password = "";            // Default MySQL password is empty in XAMPP
$dbname = "job-portal-project";   // Make sure this matches the name of your database

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
?>

