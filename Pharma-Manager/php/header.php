<?php
function createHeader($icon, $heading, $sub_heading)
{
  echo '
    <section class="row content-header">
      <div class="header-title col-md-11">
        <p class="h4 pt-2"><i class="fa fa-' . $icon . '"></i>&emsp;' . $heading . '</p>
        &emsp;&emsp;&emsp;<small class="font-weight-bold h6">' . $sub_heading . '</small>
      </div>
      <div class="col-md-1 user_options">
        <button class="col col-md-1 m-3" onclick="showOptions();">
          <i class="fa fa-gear"></i>
        </button>
        <div id="mark"><i class="fa fa-play fa-rotate-270"></i></div>
        <ul id="options" class="options list-unstyled" style="display: none;">
          <li>
            <a href="my_profile.php"><i class="fa fa-user"></i><span>My Profile</span></a>
          </li>
          <li>
            <a href="change_password.php"><i class="fa fa-edit"></i><span>Change Password</span></a>
          </li>
          <li>
            <a href="logout.php"><i class="fa fa-key"></i><span>Logout</span></a>
          </li>
        </ul>
      </div>
    </section>
    <hr style="border-top: 2px solid #ff5252;">
    ';
}
?>

<?php
require "php/db_connection.php";

$username = mysqli_query($con, "SELECT USERNAME FROM admin_credentials WHERE is_logged_in = 1")->fetch_assoc()['USERNAME']; // Get the username from the database s

// Capitalize the username
$username = ucfirst($username);

// Echo JavaScript to set the username as a variable
echo "<script>
        var username = '$username';
      </script>";
?>

<!-- <h1 class="logo-caption"><span class="tweak">Admin</span></h1> -->

<script>
  
  document.addEventListener('DOMContentLoaded', function() {
    // Get the <span> element with the class 'tweak' inside the <h1> element
    var logoCaption = document.querySelector('.logo-caption .tweak');

    // Replace the inner text of the <span> element with the username
    logoCaption.textContent = username;
  });
</script>