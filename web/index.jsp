<%@ page import="java.net.URLDecoder" %><%--
  @author: Solomon Herron
  Date: 8/6/2020
  Time: 8:02 PM

A COOKIE IS TEXT DATA - A NAME VALUE PAIR THAT STORES INFORMATION ABOUT A USER.
THE PURPOSE OF COOKIES IS TO KEEP LONG-TERM (>=1 YEAR) TRACK OF USER PREFRENCES.
THEY ARE CREATED BY SERVER AND STORED IN THE BROWSER.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/index.css">
    <%
      //THIS SCRIPtLET SHOULD BE IN A SEPARATE JAVA CLASS
      String favoriteLanguage = "Java";
      Cookie[] cookieList = request.getCookies();
      if (cookieList != null) {
        for (Cookie tempCookielist : cookieList) {
          if("com.favoriteLanguage".equals(tempCookielist.getName())){
            favoriteLanguage =  URLDecoder.decode(tempCookielist.getValue(), "UTF-8");
            break;
          }
        }
      }

      //PASS COOKIE VALUE INTO SERVLET AND MAKE CALLS TO API USING THE STRING VALUE OF THE COOKIE, RETURN RELEVANT API INFO..

    %>
  </head>

  <body>
    <header>
      <div class="header">
        <h1>Training portal</h1>
      </div>
      <div class="accent"></div>
    </header>

    <div class="content">
        <div class="books container">
          <h2>New books for <%= favoriteLanguage %></h2>
          <hr class="title-bar">
          <ul>
            <li><a href="https://developers.google.com/books/docs/viewer/developers_guide" target="_blank">make call to servlet using a scriptlet, within anchor tag that utilizes this API, and display response from api withing this tag.</a></li>
            <li>....</li>
          </ul>
        </div>

        <div class="news container">
          <h2>Latest news reports about <%= favoriteLanguage %></h2>
          <hr class="title-bar">
          <ul>
            <li><a href="https://developer.nytimes.com/docs/articlesearch-product/1/overview" target="_blank">make call to servlet that utilizes this API, and display result withing this tag.</a></li>
            <li>....</li>
          </ul>
        </div>

        <div class="jobs container">
          <h2>Hot jobs for <%=favoriteLanguage%></h2>
          <hr class="title-bar">
          <ul>
            <li><a href="https://jobs.github.com/api" target="_blank">make call to servlet that utilizes this API, and display result withing this tag.</a></li>
            <li>...</li>
          </ul>
        </div>
    </div>


  </body>
</html>
