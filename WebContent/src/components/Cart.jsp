<html>
  <head>
    <link rel="stylesheet" href="../style/form.css" />
    <link rel="stylesheet" href="../styles.css"/>
    <link rel="stylesheet" href="../style/cart.css"/>
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
      <div class="main-cart">
        <div class="cart-title"><h1>My Cart</h1></div>

        <!-- <div class="cart-header">
            <div class="cart-h col-6">Product</div>
            <div class="cart-h col-3">Amount</div>
            <div class="cart-h col-3 price">Price</div>
        </div> -->

        <div class="product-div">
                <table  cellspacing="0"  style="width:100%">
                    <tr class="cart-header">
                        <th>Product</th>
                        <th>Amount</th> 
                        <th>Price</th>
                    </tr>
                    <tr>
                        <td>Product 1</td>
                        <td>1</td>
                        <td>CA$ 59.99</td>
                    </tr>
                    <tr>
                        <td>Product 2</td>
                        <td>1</td>
                        <td>CA$ 59.99</td>
                    </tr>
                    <tr style="border-bottom: 1px solid #000;">
                        <td>Product 3</td>
                        <td>2</td>
                        <td>CA$ 59.99</td>
                    </tr>
                    
                    <tr>
                        <td class="bottom-total"></td>
                        <td  class="bottom-total" ><b>Total Amount</b></td>
                        <td  class="bottom-total"  ><b>CA$ 179.97</b></td>
                    </tr>
                </table>
                

                <div class="checkout-div">
                    <button class="checkout-btn">Checkout</button>
                </div>
                


            <!-- <div class="product-row">
                <div class="cart-product-image"></div>

                <div class="cart-product-details">
                    <h3>Product Name</h3>
                </div>

                <div class="cart-amount">
                    <button class="cart-amt add">+</button>
                    <p class="cart-amt amt">1</p>
                    <button class="cart-amt sub">-</button>
                </div>

                <div class="cart-price">
                        <h3>CA$ 59.99</h3>
                </div> -->
            </div>
            

           

            

        </div>

        
      </div>
    </div>
  </body>
</html>
