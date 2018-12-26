
<%--<%@ page import = "java.io.*,java.util.*,java.sql.*"%>--%>
<%--<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>--%>
<%--<%@ page import = "com.mysql.jdbc.*" %>--%>
<%--<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>--%>
<%--<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<sql:query dataSource="jdbc/affablebean" var="result">--%>
  <%--SELECT * FROM category--%>
<%--</sql:query>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
  <%--<meta charset="UTF-8">--%>
  <%--<title>Product</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Product</h1>--%>
<%--<form action="product-controller">--%>
  <%--<table>--%>
    <%--<tr>--%>
      <%--<td>Name</td>--%>
      <%--<td><input type="text" name="name"></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
      <%--<td>Price</td>--%>
      <%--<td><input type="number" name="price"></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
      <%--<td>Description</td>--%>
      <%--<td><input type="text" name="description"></td>--%>
    <%--</tr>--%>
    <%--<tr>--%>
      <%--<td>Category</td>--%>
      <%--<td>--%>
        <%--<select name="category_id">--%>
          <%--<c:forEach var="row" items="${result.rows}">--%>
            <%--<option value='<c:out value="${row.id}"/>'>--%>
              <%--<c:out value="${row.name}"/>--%>
            <%--</option>--%>

          <%--</c:forEach>--%>
        <%--</select>--%>
      <%--</td>--%>

    <%--</tr>--%>
    <%--<tr>--%>
      <%--<td colspan="2">--%>
        <%--<input type="submit" value="Create">--%>
      <%--</td>--%>
    <%--</tr>--%>
  <%--</table>--%>
<%--</form>--%>

<%--</body>--%>

<%--<script>--%>
    <%--function confirmDelete(id) {--%>
        <%--if (confirm('Are you sure?')) {--%>
            <%--window.location = "product-controller?cmd=d&id="+id;--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>
<%--</html>--%>


<%--
    Document   : index.jsp
    Created on : Dec 24, 2018, 5:32:24 PM
    Author     : thanawadee
--%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<sql:query var="categories" dataSource="jdbc/affablebean">
  SELECT * FROM category
</sql:query>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="css/affablebean.css">
  <title>The Affable Bean</title>
</head>
<body>
<div id="main">
  <div id="header">
    <div id="widgetBar">

      <div class="headerWidget">
        [ language toggle ]
      </div>

      <div class="headerWidget">
        [ shopping cart widget ]
      </div>
    </div>
    <a href="#">
      <img src="#" id="logo" alt="Affable Bean logo">
    </a>
    <img src="#" id="logoText" alt="the affable bean">
  </div>
<div id="indexLeftColumn">
  <div id="welcomeText">
    <p>[ welcome text ]</p>
    <!-- test to access context parameters -->
    categoryImagePath: ${initParam.categoryImagePath}
    productImagePath: ${initParam.productImagePath}
  </div>
</div>

  <div id="indexRightColumn">
    <c:forEach var="category" items="${categories.rows}">
      <div class="categoryBox">
        <a href="category?${category.id}">

          <span class="categoryLabelText">${category.name}</span>

          <img src="${initParam.categoryImagePath}${category.name}.jpg"
               alt="${category.name}">
        </a>
      </div>
    </c:forEach>
  </div>
<div id="footer">
  <hr>
  <p id="footerText">[ footer text ]</p>
</div>
</div>
</body>
</html>



