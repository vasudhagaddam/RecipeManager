<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="shortcut icon" href="images/kk2.jpg" type="image/x-icon">

<title>Recipe Manager</title>



</head>
<body>


 <table align="center">
 <thead>
      
        <tr>
        </tr>
      
    </thead>
    <tbody>
    
     <%
     String s=request.getParameter("count");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_manager","root","");
    Statement st=con.createStatement();
    String sql="select * from addrecipe where id='"+s+"' ";
    System.out.println(sql);
    ResultSet rs=st.executeQuery(sql);

    while(rs.next())
    {


    String s1=rs.getString("recipe");
    String s2=rs.getString("ingredient1");
    String s3=rs.getString("ingredient2");
    String s4=rs.getString("ingredient3");
    String s5=rs.getString("ingredient4");
    String s6=rs.getString("ingredient5");
   
    %>
    
    <tr ><th><font color="#078C15">RecipeName:</font></th><td><b ><font color="#078C15"><%=s1 %></font></b></td></tr>
    <tr><th>Ingredient 1:</th><td><%=s2 %></td></tr>
    <tr><th>Ingredient 2:</th><td><%=s3 %></td><tr>
    <tr><th>Ingredient 3:</th><td><%=s4 %></td></tr>
    <tr><th>Ingredient 4:</th><td><%=s5 %></td></tr>
    <tr><th>Ingredient 5:</th><td><%=s6 %></td></tr>
    
    
    <% 
    }

    }
    catch(Exception e)
    {
    e.printStackTrace();
    }
    %>
       
    					</tbody>
    					
    					
    </table>

</body>
</html>