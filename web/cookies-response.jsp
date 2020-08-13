<%@ page import="java.net.URLEncoder" %><%--
  @author: Solomon Herron
  Date: 8/8/2020
  Time: 6:58 PM
  Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure 
  dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, 
  sunt in culpa qui officia deserunt mollit anim id est laborum.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        String clientLanguage = request.getParameter("favoriteLanguage");
        clientLanguage = URLEncoder.encode(clientLanguage, "UTF-8");
        Cookie myCookie = new Cookie("com.favoriteLanguage", clientLanguage);
        myCookie.setMaxAge(60*60*24*365);
        response.addCookie(myCookie);
    %>
</head>
<body>
 Thanks we set your favorite language to ${param.favoriteLanguage}
    <a href="index.jsp">Go to your home page</a>
</body>
</html>
