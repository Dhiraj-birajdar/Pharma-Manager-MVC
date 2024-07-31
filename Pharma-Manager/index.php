<!DOCTYPE html>
<html>

<head>
  <title>Login & Registration Form</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
  <script src="js/index.js"></script>
  <style>
    label{
      background-color:aliceblue;
      border-radius: 5px;
      opacity: 0.6;
    }
  </style>
</head>

<body>
  <div class="bg"></div>
  <div class="bg bg2"></div>
  <div class="bg bg3"></div>
    
  <div class="cont" style="background-image: url('images/pills2.jpg'); color:black;">
    <form name="login-form" class="login-form" action="home.php" method="post" onsubmit="return validateCredentials();">

      <div class="form sign-in">
        <h2>Sign In</h2>
        <label>
          <span>Username</span>
          <input type="text" name="username" onkeyup="validate();" required>
        </label>
        <label>
          <span>Password</span>
          <input type="password" name="password" onkeyup="validate();" required>
        </label>
        <button class="submit" type="submit">Sign In</button>
      </div>
    </form><!-- form close -->

    <div class="sub-cont" style="background-image: url('images/med2.jpg');">
      <div class="img">
        <div class="img-text m-up">
          <h1>New here?</h1>
          <p>sign up</p>
        </div>
        <div class="img-text m-in">
          <h1>One of us?</h1>
          <p>just sign in</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <form name="login-form" class="login-form" action="signup.php" method="post">

        <div class="form sign-up" >
          <h2 style="color:aliceblue">Sign Up</h2>
          <label>
            <span >userName</span>
            <input type="text" name="username">
          </label>
          <label>
            <span>Email</span>
            <input type="email" name="email">
          </label>

          <label>
            <span>Pharmacy Name</span>
            <input type="text" name="pharmacyName">
          </label>
          <label>
            <span>Address</span>
            <input type="text" name="address">
          </label>
          <label>
            <span>Contact</span>
            <input type="number" name="contact" pattern="[0-9]{10}">
          </label>

          <label>
            <span>Password</span>
            <input type="password" name="password">
          </label>
          <button type="submit" class="submit">Sign Up Now</button>
        </div>
      </form><!-- form close -->
    </div>
  </div>
  <script type="text/javascript" src="script.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.6.1/sockjs.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
  <script src="/js/main.js"></script>
</body>

</html>