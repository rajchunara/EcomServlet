<html>
  <head>
    <link rel="stylesheet" href="../style/form.css" />
    <link rel="stylesheet" href="../styles.css">
    <style>
    	<%@ include file="../styles.css" %>
    	<%@ include file="../style2.css" %>
    	<%@ include file="../style/userslist.css" %>
    </style>
    
    
  </head>

  <body>
  
  <%-- 
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if(session.getAttribute("username") == null){
			response.sendRedirect("Login.jsp");
		}

%> --%>

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
                <a href="Admin.jsp">
                    <p class="nav-tag">Products</p>
                </a>
            </div>
           
            <div class="navbar-item">
                <a href="../../index.jsp">
                    <p class="nav-tag">Home</p>
                </a>
            </div>
            
           
        </div>
    </nav>

    <!-- UsersList -->
    <div class="container-table">
      <div class="UsersList">
     	<h2>HTML Table</h2>

<table>
  <tr>
    <th>Username</th>
    <th>Email</th>
    <th>Address</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
  </tr>
  <tr>
    <td>Island Trading</td>
    <td>Helen Bennett</td>
    <td>UK</td>
  </tr>
  <tr>
    <td>Laughing Bacchus Winecellars</td>
    <td>Yoshi Tannamuri</td>
    <td>Canada</td>
  </tr>
  <tr>
    <td>Magazzini Alimentari Riuniti</td>
    <td>Giovanni Rovelli</td>
    <td>Italy</td>
  </tr>
</table>
        
      </div>
    </div>

    
   
  </body>
</html>
