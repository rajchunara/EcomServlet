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
          <a href="../../index.jsp">
          <p class="nav-tag">Home</p>
        </a>
        </div>
      </div>
    </nav>

    <!-- Form -->
    <div class="container">
      <div class="login">
      
      <form id="firstform" action="../../AddProduct" method="post" enctype="multipart/form-data">
        
          <div class="login-header">
            <h3 class="login-ip login-title">Enter Product Details</h3>
          </div>
          
          <label class="login-ip">Product Name</label>
          <input
            type="text"
            id="productname"
            placeholder="Enter Product Name"
            class="uname ip login-ip"
            name="productname"
            required
          />
          
          <label class="login-ip">Price</label>
          <input
            type="text"
            id="productprice"
            placeholder="Enter price"
            class="email ip login-ip"
            name="productprice"
            required
          />   
          
          <label class="login-ip">Product Details</label> 
             <textarea class="login-ip" name="details" id="details" cols="30" rows="10" placeholder="Enter details"></textarea>                     
        
         <label class="login-ip">Add Product Image</label>
          <input
            type="file"
            class="login-ip img-file"
            name="file2"
            required           
          />
          
       <input class="login-ip register-btn" type ="submit" value="Add Product" />
         
        
        
        
        
         </form>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       <!--  <form id="firstform" action="../../AddProductDetails" method="post" >
        
          <div class="login-header">
            <h3 class="login-ip login-title">Enter Product Details</h3>
          </div>
          
          <label class="login-ip">Product Name</label>
          <input
            type="text"
            id="productname"
            placeholder="Enter Product Name"
            class="uname ip login-ip"
            name="productname"
            required
          />
          
          <label class="login-ip">Price</label>
          <input
            type="text"
            id="productprice"
            placeholder="Enter price"
            class="email ip login-ip"
            name="productprice"
            required
          />   
          
          <label class="login-ip">Product Details</label> 
             <textarea class="login-ip" name="details" id="details" cols="30" rows="10" placeholder="Enter details"></textarea>                     
        
         </form>
			
		<form id="secondform" action="../../AddProduct" method="post" enctype="multipart/form-data">
       
          
          <label class="login-ip">Add Product Image</label>
          <input
            type="file"
            class="login-ip img-file"
            name="file2"
            required
            onclick="submitForms()"
          />
          
       <input class="login-ip register-btn" type ="submit" value="Add Product" />
         
           
          </form> -->
          
          
          
       
         
        
        
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="js/app-ajax.js" type="text/javascript"></script>
    
   
  </body>
</html>
