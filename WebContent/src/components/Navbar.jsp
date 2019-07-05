


<% if(session.getAttribute("username")==null){ %>       


<nav class="navbar">
		<div class="nav-container">
			<div class="logo">
				<h1>Logo</h1>
			</div>

			<input class="search-bar" type="text" placeholder="search product" />

			

			<div class="navbar-item cart">
				<a href="src/components/Cart.jsp">
				<img src="./src/Images/shopping-cart.png" class="cart-icon" alt="" />
				</a>
			</div>
			<div class="navbar-item">
					<a href="src/components/Login.jsp">
				<p class="nav-tag">
				Login
				</p>
			</a>
			</div>
			<div class="navbar-item">
			
				<a href="src/components/Register.jsp" >
					<p class="nav-tag">					
						About
					</p>
				</a>
			</div>
			
			<div class="navbar-item">
			
			
				<a href="index.html">
				<p class="nav-tag">Home</p>
				</a>
				
			</div>
		</div>
	</nav>
	
	<% } else if(session.getAttribute("username")!=null){%>
	
	<nav class="navbar">
		<div class="nav-container">
			<div class="logo">
				<h1>Logo</h1>
			</div>

			<input class="search-bar" type="text" placeholder="search product" />

			

			<div class="navbar-item cart">
				<a href="src/components/Cart.jsp">
				<img src="./src/Images/shopping-cart.png" class="cart-icon" alt="" />
				</a>
			</div>
			
			<div class="navbar-item" style="margin-right:10px; font-weight:500; color:white;">
            <form action="LogoutServlet" method="get" name="logoutform">            
            	<input class="nav-tag logout-btn"  type="submit" value="Logout"/>                
             </form>
            </div>
			<div class="navbar-item">
			
				<a href="index.jsp" >
					<p class="nav-tag">					
						Welcome, <% out.print(session.getAttribute("username")); %>
					</p>
				</a>
			</div>			
			
		</div>
	</nav>
	
	
	<%} %>
	
	