<%--
  Created by IntelliJ IDEA.
  User: Huynh
  Date: 5/12/2020
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
  </head>
  <body>

  <jsp:include page="header.jsp"></jsp:include>
  <jsp:include page="slider.jsp"></jsp:include>
  <section id="slider"><!--slider-->
    <div class="container">
      <jsp:include page="category.jsp"></jsp:include>
      <jsp:include page="product.jsp"></jsp:include>
    </div>
  </section>
  <jsp:include page="footer.jsp"></jsp:include>

  </body>
</html>
