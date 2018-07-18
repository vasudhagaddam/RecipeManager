<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%
String RecipeName=request.getParameter("recipe");
String Ingredient1=request.getParameter("ingredient1");
String Ingredient2=request.getParameter("ingredient2");
String Ingredient3=request.getParameter("ingredient3");
String Ingredient4=request.getParameter("ingredient4");
String Ingredient5=request.getParameter("ingredient5");


try
{
	
 Class.forName("com.mysql.jdbc.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_manager","root","");
 Statement st=con.createStatement();
 String sql="insert into addrecipe(recipe,ingredient1,ingredient2,ingredient3,ingredient4,ingredient5)values('"+RecipeName+"','"+Ingredient1+"','"+Ingredient2+"','"+Ingredient3+"','"+Ingredient4+"','"+Ingredient5+"')";
 System.out.println(sql);
 int i=st.executeUpdate(sql);
 if(i>0)
 {
	 session.setAttribute("recipe",RecipeName);
 	%>
 	
 	<script type="text/javascript">
 	alert("success");
 	</script>
 	<%
 	response.setHeader("refresh","0.1;URL=index.jsp");
 	


 }
 
}
catch(Exception e)
{
	e.printStackTrace();
}


%>


</body>
</html>