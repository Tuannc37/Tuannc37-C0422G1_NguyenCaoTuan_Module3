<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 27/07/2022
  Time: 2:54 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Currency Converter</title>
  <style>

  </style>
</head>
<body>
<h2>Currency Converter</h2>
<form action="/display-discount" method="post">
  <label>List Price: </label><br/>
  <input type="text" name="price" placeholder="0" /><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="percent" placeholder="0" /><br/>
  <input type = "submit" id = "submit" value = "Amount "/>
</form>
</body>
</html>
