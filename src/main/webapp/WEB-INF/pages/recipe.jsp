<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <meta charset="utf-8">
  <title>Spring MVC Application</title>

  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://getbootstrap.com/dist/css/bootstrap-responsive.min.css" rel="stylesheet">
</head>

<body>
<div class="container">
  <c:if test="${!empty recipe}">
    <h3>Recipe</h3>
    <table class="table table-bordered table-striped">
      <thead>
      <tr>
        <th>ID</th>
        <th>Prepare</th>
        <th>Ingredient</th>

        <th>&nbsp;</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${recipe}" var="recipe">
        <tr>
          <td>${recipe.id}</td>
          <td>${recipe.prepare}</td>
          <td>${recipe.ingredient}</td>

          <td>
            <form:form action="delete/${recipe.id}" method="post"><input type="submit"
                                                                         class="btn btn-danger btn-mini"
                                                                         value="Delete"/>
            </form:form>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </c:if>
</div>
</body>
</html