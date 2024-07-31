<?php
require "php/db_connection.php";

if ($con) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST['email'];
    $pharmacyName = $_POST['pharmacyName'];
    $address = $_POST['address'];
    $contact = $_POST['contact'];

    $query = "insert into admin_credentials (USERNAME, PASSWORD, EMAIL, PHARMACY_NAME, ADDRESS, CONTACT_NUMBER,IS_LOGGED_IN) values ('$username', '$password', '$email', '$pharmacyName', '$address', '$contact',0)";
    $result = mysqli_query($con, $query);
}

header("Location: index.php");
exit;
