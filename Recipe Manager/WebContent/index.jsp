
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

<script>
function Recipe(){
	var x = document.getElementById("recipet").value;
    document.getElementById("frame").innerHTML = "You selected: " + x;
}
</script>
<title>Recipe Manager</title>
<style type="text/css">

.sad{
 background: url(images/r36.jpg) ; class:"img-responsive"; 
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
}
</style>

<script language="javascript" type="text/javascript">  
      var xmlHttp  
      var xmlHttp
      function showAddRecipe(){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request");
      return;
      } 
      var url="addrecipe.jsp";
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      
      function stateChange(){   
          if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
          document.getElementById("addrecipe").innerHTML=xmlHttp.responseText  ; 
          }   
          }
      }
      
      function showDisplayRecipe(str){
          if (typeof XMLHttpRequest != "undefined"){
          xmlHttp= new XMLHttpRequest();
          }
          else if (window.ActiveXObject){
          xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
          }
          if (xmlHttp==null){
          alert("Browser does not support XMLHTTP Request");
          return;
          } 
          var url="recipedisplay.jsp";
          url +="?count=" +str;
          xmlHttp.onreadystatechange = stateChange;
          xmlHttp.open("GET", url, true);
          xmlHttp.send(null);
          
          function stateChange(){   
              if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
              document.getElementById("addrecipe").innerHTML=xmlHttp.responseText; 
              }   
              }
          }
      </script>

</head>
<body class="sad">
<div class="row" style="background-image:url(images/water.jpg);background-size:1342px;">
<div class="col-sm-3"></div>
<div class="col-sm-6">
<h1 align="center"><font color="red">Recipe Manager</font></h1>
</div>
<div class="col-sm-3"></div>
</div><br>

 <div class="row" >
 <div class="col-sm-1"><br></div>
 <div class="col-sm-4">
 
 


<select name='recipe' onchange="showDisplayRecipe(this.value)">  
       <option value="none">Recipe List</option>  
    <%
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/recipe_manager","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from addrecipe");
 while(rs.next()){
     %>
      <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>  
      <%
 }
     %>
      </select>  <br><br>

<input type="button" name="add" value="Add Recipe" onclick="showAddRecipe()" >



  
 
 </div>
 
 <div class="col-sm-6 text-center" id="addrecipe">
 
 <img src="images/kk3.jpg" class="img-responsive">
 <h2 style="font-family:verdana;"><font color="#33FFE9">To The Recipe Manager</font></h2>
 
 
 </div>
 
 
 </div>

  <div class="row"></div>
</body>
</html>