<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<style><%@ include file="src/styles.css" %></style>
	<link rel="stylesheet"
	
	
	 href="./src/styles.css" />
	
	<title>Document</title>
</head>

<body>

<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	

%>


<% String username = (String) session.getAttribute("username");  %>

	<!-- Navbar -->
	<%@include file="src/components/Navbar.jsp"%>


	<!-- Center part -->
	<div class="center-part">
		<!-- Image and Search -->
		<div class="welcome-image">
			<div class="Image">
			</div>
		</div>



	</div>

	<!-- Product List -->
	<div class="Product-view">

		<div class="offers-product">

			<!-- offers-product -->

			<div>
				<h2 class="off-h2">Offers</h2>
			</div>
			<div class="card">
				<div class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>

			</div>
			<div class="card">
				<div id="img1" class="product-image ">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img2" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img3" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>

			</div>

		</div>

		<!-- other-products -->

		<div class="other-products">
			<div class="oth-h2">
				<h2>Other Products</h2>
			</div>

			<div class="card">
				<a  href="src/components/Product.html">
				<div id="img4" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</a>

			</div>
			<div class="card">
				<div id="img5" class="product-image ">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img6" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img7" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>

			</div>

			<div class="card">
				<div id="img7" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img7" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img7" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

			<div class="card">
				<div id="img7" class="product-image">
				</div>

				<div class="product-details">
					<p class="pro product-name">Product Name</p>
					<p class="pro product-price">CA$ 99.99</p>
				</div>

				<div class="add-div">
					<button class="add-btn">Add to cart</button>
				</div>
			</div>

		</div>

		<div class="normal-products">
		</div>

	</div>





	<!-- Footer -->

	<div class=" footer">
		<div class="col-6 footer-items copy-right">
			Logo copyright &copy; 2019
		</div>
		<div class="col-4 social-icon">
			<div class="scl">
				<img class="footer-icon facebook" src="./src/Images/facebook.png" alt="" />
			</div>

			<div class="scl">
				<img class="footer-icon pinterest" src="./src/Images/pinterest.png" alt="" />
			</div>

			<div class="scl">
				<img class="footer-icon twitter" src="./src/Images/twitter.png" alt="" />
			</div>
		</div>
	</div>

	<script src="src/index.js"></script>
</body>

</html>