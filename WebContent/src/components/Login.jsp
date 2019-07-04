<html>

<head>
  <link rel="stylesheet" href="../style/form.css" />
  <link rel="stylesheet" href="../styles.css">
</head>

<body>




  <!-- Navbar -->
  <nav class="navbar">
    <div class="nav-container">
      <div class="logo">
        <h1>Logo</h1>
      </div>
      <div class="navbar-item cart">
          <a href="Cart.jsp">
        <img src="../Images/shopping-cart.png" class="cart-icon" alt="" />
          </a>
      </div>
      <div class="navbar-item">
        <a href="Login.jsp">
          <p class="nav-tag">Login</p>
        </a>
      </div>
      <div class="navbar-item">
        <a href="Register.jsp">
          <p class="nav-tag">
            Register
          </p>
        </a>
      </div>
      <div class="navbar-item">

        <p class="nav-tag">About</p>
      </div>
      <div class="navbar-item">
        <a href="../../index.jsp">
          <p class="nav-tag">Home</p>
        </a>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="login">
      <form action="../../Login" method="POST">
        <div class="login-header">
          <h3 class="login-ip login-title">Login</h3>
        </div>
        <label class="login-ip">Username</label>
        <input type="text" placeholder="Enter Username" name="username" class="uname ip login-ip" required />

        <label class="login-ip">Password</label>
        <input type="password" placeholder="Enter password" name="password" class="uname ip login-ip" required />

        <input class="login-ip register-btn" onclick="location.href='Admin.html'" type="submit" value="Login" />
      </form>
    </div>
  </div>
</body>

</html>