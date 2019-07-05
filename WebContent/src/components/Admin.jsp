<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <style>
    	<%@ include file="../styles.css" %>
    	<%@ include file="../style2.css" %>
    </style>
    <title>Document</title>
</head>

<body>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("username") == null){
			response.sendRedirect("Login.jsp");
		}

%>

    <!-- Navbar -->
    <nav class="navbar">
        <div class="nav-container">
            <div class="logo">
                <h1>Logo</h1>
            </div>
            <div class="Admin">
                <h1>Admin</h1>
            </div>
            
             
            <div class="navbar-item" style="margin-right:10px; font-weight:500; color:white;">
            	<form action="../../LogoutServlet" method="get" name="logoutform">            
            		<input class="nav-tag Logout-btn"  type="submit" value="Logout"/>                
            	 </form>
            </div>
            
            <div class="navbar-item" >
                <a href="Admin.jsp">
                    <p class="nav-tag" style="width:120px; ">
                    <% out.print("Welcome, "+session.getAttribute("username")); %>
                    </p>
                </a>
            </div>
           
            <div class="navbar-item">
                <a href="../../index.jsp">
                    <p class="nav-tag">Home</p>
                </a>
            </div>
            
           
        </div>
    </nav>

    <!-- Product List -->
    <div class="Product-view">


        <div class="offers-product">

            <div>
                <div class="pro1">
                    <h2>Products</h2>
                    <button class="add-product-list">
                    <a href="AddProduct.jsp">ADD PRODUCT</a>                    
                    </button>
                </div>
                <div class="pro1"></div>
            </div>
            <div class="card">
                <div class="product-image">

                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>

            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>


            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>

            <div class="card">
                <div class="product-image">
                </div>

                <div class="product-details">
                    <p class="pro product-name">Product Name</p>
                    <p class="pro product-price">CA$ 99.99</p>
                </div>

                <div class="add-div">
                    <button class="remove-btn">Remove Product</button>
                </div>
            </div>



        </div>
        <div class="seemore see-products">See more...</div>

        <!-- Users -->

        <div class="users">

            <div>
                <h2>Users</h2>
            </div>
            <div class="card">
                <div id="user1" class="user-image">
                </div>

                <div class="name-div">
                    <h2 class="name">Jane Doe</h2>
                </div>

            </div>

            <div class="card">
                <div id="user2" class="user-image">
                </div>

                <div class="name-div">
                    <h2 class="name">John Doe</h2>
                </div>

            </div>

            <div class="card">
                <div id="user3" class="user-image">
                </div>

                <div class="name-div">
                    <h2 class="name">Fred Obrien</h2>
                </div>

            </div>

            <div class="card">
                <div id="user4" class="user-image">
                </div>

                <div class="name-div">
                    <h2 class="name">Lisa Tate</h2>
                </div>

            </div>
        </div>
        <div class="seemore see-users">See more...</div>
    </div>





    <!-- Footer -->

    <div class=" footer" style="margin-top: 200px;">
        <div class="col-6 footer-items copy-right">
            Logo copyright &copy; 2019
        </div>
        <div class="col-4 social-icon">
            <div class="scl">
                <img class="footer-icon facebook" src="../Images/facebook.png" alt="" />
            </div>

            <div class="scl">
                <img class="footer-icon pinterest" src="../Images/pinterest.png" alt="" />
            </div>

            <div class="scl">
                <img class="footer-icon twitter" src="../Images/twitter.png" alt="" />
            </div>
        </div>
    </div>
</body>

</html>