<?php
function openConnection() {
    $host = "localhost";
    $user = "root";
    $pw = "yash"; // Replace 'your_password' with your actual database password
    $db = "supplychain";

    // Create connection
    $con = new mysqli($host, $user, $pw, $db);

    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    return $con;
}

function closeConnection($con) {
    $con->close();
}
?>
