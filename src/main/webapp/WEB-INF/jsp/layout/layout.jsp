<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title><tiles:insertAttribute name="title"></tiles:insertAttribute></title>
        
        <link href="<c:url value="/assets/bootstrap/css/bootstrap.min.css" />"
              rel="stylesheet" />
        <link
            href="<c:url value="/assets/bootstrap/css/bootstrap-responsive.min.css" />"
            rel="stylesheet" />
        <link href="<c:url value="/assets/themes/css/bootstrappage.css" />"
              rel="stylesheet" />
        <link href="<c:url value="/assets/themes/css/flexslider.css" />"
              rel="stylesheet" />
        <!--link href="<!--c:url value="/assets/themes/css/jquery.fancybox.css" />"
              rel="stylesheet" /-->
        <link href="<c:url value="/assets/themes/css/main.css" />"
              rel="stylesheet" />
        <!--link href="<!--c:url value="/assets/themes/js/css/style.css" />"
              rel="stylesheet" /-->
    </head>
    <body>
        <tiles:insertAttribute name="header"></tiles:insertAttribute>
            <div id="wrapper" class="container">
                <tiles:insertAttribute name="content-top"></tiles:insertAttribute>
                <tiles:insertAttribute name="content"></tiles:insertAttribute>
                <tiles:insertAttribute name="footer"></tiles:insertAttribute>	

            </div>

        <script type="text/javascript"
            src="<c:url value="/assets/bootstrap/js/bootstrap.min.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/common.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/jquery.fancybox.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/jquery.flexslider-min.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/jquery.scrolltotop.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/jquery-1.7.2.min.js" />"></script>
        <script type="text/javascript"
        src="<c:url value="/assets/themes/js/superfish.js" />"></script>
    </body>
</html>