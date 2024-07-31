<?php
require "php/db_connection.php";

if ($con) {
  $query = "UPDATE admin_credentials SET IS_LOGGED_IN = 0 WHERE IS_LOGGED_IN = 1";
  $result = mysqli_query($con, $query);
}

header("Location: index.php");
exit;
?>


<!-- <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Logout</title>
    <script src="js/restrict.js"></script>
  </head>
  <body>

  </body>
</html> -->