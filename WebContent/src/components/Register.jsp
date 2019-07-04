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

    <!-- Form -->
    <div class="container">
      <div class="login">
        <form action="../../RegisterServlet" method="post">
          <div class="login-header">
            <h3 class="login-ip login-title">Register</h3>
          </div>
          <label class="login-ip">Username*</label>
          <input
            type="text"
            placeholder="Enter Username"
            class="uname ip login-ip"
            name="username"
            required
          />
          <label class="login-ip">Email*</label>
          <input
            type="email"
            placeholder="Enter Email"
            class="email ip login-ip"
            name="email"
            required
          />
          <label class="login-ip">Password*</label>
          <input
            type="password"
            placeholder="Enter password"
            class="uname ip login-ip"
            name="password"
            required
          />
          <label class="login-ip">Address*</label>
          <input
            type="text"
            placeholder="Enter Address"
            class="address ip login-ip"
            name="address"
            required
          />
         
          <input class="login-ip register-btn" type="submit" value="Register" />
        </form>
      </div>
    </div>
  </body>
</html>
