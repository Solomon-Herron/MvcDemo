<%--
  @author: Solomon Herron
  Date: 8/8/2020
  Time: 6:45 PM
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
  sunt in culpa qui officia deserunt mollit anim id est laborum.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>

    <form action="cookies-response.jsp">
        <h1>Select a favorite language:</h1>
        <label for="choose-language">
            <select name="favoriteLanguage" id="choose-language">
                <option>Java</option>
                <option>C#</option>
                <option>PHP</option>
                <option>Ruby</option>
            </select>
            <input type="submit" value="Submit">
        </label>
    </form>


</body>
</html>
