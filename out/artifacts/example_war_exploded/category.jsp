<%@ page import="dao.DanhMucDAO" %>
<%@ page import="model.DanhMuc" %><%--
  Created by IntelliJ IDEA.
  User: Huynh
  Date: 5/12/2020
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

<%
    DanhMucDAO danhMucDAO = new DanhMucDAO();
%>

<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Danh Mục</h2>
        <div class="panel-group category-products" id="accordian"><!--category-productsr-->
            <%
                for (DanhMuc danh_muc_cha: danhMucDAO.getListDanhMucCha()){
            %>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                            <%
                                danh_muc_cha.getTen_danh_muc();
                            %>
                        </a>
                    </h4>
                </div>
                    <div class="panel-body">
                        <ul>
                            <%
                                for (DanhMuc danh_muc_con: danhMucDAO.getListDanhMucCon(danh_muc_cha.getMa_danh_muc())){
                            %>
                            <li><a href="#"><%
                                danh_muc_con.getTen_danh_muc();
                            %></a></li>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>
            <%
                }
            %>
        </div><!--/category-products-->

        <div class="brands_products"><!--brands_products-->
            <h2>Brands</h2>
            <div class="brands-name">
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="#"> <span class="pull-right">(50)</span>Acne</a></li>
                    <li><a href="#"> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                    <li><a href="#"> <span class="pull-right">(27)</span>Albiro</a></li>
                    <li><a href="#"> <span class="pull-right">(32)</span>Ronhill</a></li>
                    <li><a href="#"> <span class="pull-right">(5)</span>Oddmolly</a></li>
                    <li><a href="#"> <span class="pull-right">(9)</span>Boudestijn</a></li>
                    <li><a href="#"> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                </ul>
            </div>
        </div><!--/brands_products-->

<%--        <div class="price-range"><!--price-range-->--%>
<%--            <h2>Price Range</h2>--%>
<%--            <div class="well text-center">--%>
<%--                <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />--%>
<%--                <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>--%>
<%--            </div>--%>
<%--        </div><!--/price-range-->--%>

<%--        <div class="shipping text-center"><!--shipping-->--%>
<%--            <img src="images/home/shipping.jpg" alt="" />--%>
<%--        </div><!--/shipping-->--%>

    </div>
</div>

</body>
</html>
