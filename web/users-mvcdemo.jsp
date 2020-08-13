<%--
  @author: Solomon Herron
  Date: 8/11/2020
  Time: 6:35 PM
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
  sunt in culpa qui officia deserunt mollit anim id est laborum.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>User table Demo</h1>
    <br>
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
        </tr>

        <c:forEach var="tempUser" items="${user_list}">
            <tr>
                <td>${tempUser.fName}</td>
                <td>${tempUser.lName}</td>
                <td>${tempUser.email}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
