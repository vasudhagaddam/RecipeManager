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
<form action="addrecipe_action.jsp">
 <div class="row">
 <h1><font color="#078C3F">Add Recipe</font></h1>
 <label>RecipeName :<input type="text" name="recipe" required="required" class="form-control"></label><br><br>
 <label>Ingredient 1:<input type="text" name="ingredient1" required="required" class="form-control"></label><br><br>
 <label>Ingredient 2:<input type="text" name="ingredient2"  class="form-control"></label><br><br>
 <label>Ingredient 3:<input type="text" name="ingredient3"  class="form-control"></label><br><br>
 <label>Ingredient 4:<input type="text" name="ingredient4"  class="form-control"></label><br><br>
 <label>Ingredient 5:<input type="text" name="ingredient5"  class="form-control"></label><br><br>
 <input type="submit" value="Add Recipe" class="btn btn-success">&nbsp;&nbsp;<input type="reset" value="cancel" class="btn btn-danger">
 </div>
 </form>
</body>
</html>