<?php
include 'usersconnect.php';

$category_name  = $_POST["category_name"];

if ($category_name == "" ) {
    echo "All fields are required.";
    exit;
}

$sql = "INSERT INTO d_expense_category (category_name) VALUES ('$category_name')";
if(mysqli_query($con, $sql)){
    echo "Record inserted successfully";
} else {
    echo "Error: " . mysqli_error($con);
}

mysqli_close($con);
?>
