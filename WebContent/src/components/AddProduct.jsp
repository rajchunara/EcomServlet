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
        
        <div class="navbar-item">
          
          <p class="nav-tag">About</p>
        </div>
        <div class="navbar-item">
          <a href="../../index.html">
          <p class="nav-tag">Home</p>
        </a>
        </div>
      </div>
    </nav>

    <!-- Form -->
    <div class="container">
      <div class="login">
        <form>
          <div class="login-header">
            <h3 class="login-ip login-title">Enter Product Details</h3>
          </div>
          <label class="login-ip">Product Name</label>
          <input
            type="text"
            placeholder="Enter Product Name"
            class="uname ip login-ip"
            required
          />
          <label class="login-ip">Price</label>
          <input
            type="text"
            placeholder="Enter price"
            class="email ip login-ip"
            required
          />

          <label class="login-ip">Company Name</label>
          <input
            type="text"
            placeholder="Enter city"
            class="city ip login-ip"
            required
          />

          <label class="login-ip">Add Product Image</label>
          <input
            type="file"
            class="login-ip img-file"
            required
          />
          
          <label class="login-ip">Product Details</label>
          <textarea class="login-ip" name="details" id="det" cols="30" rows="10" placeholder="Enter details"></textarea>
          
          
         

          <input class="login-ip register-btn" type="submit" value="Add Product" />
        </form>
      </div>
    </div>
  </body>
</html>
