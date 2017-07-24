<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title><tiles:insertAttribute name="title"/></title>
        <link href="/e-shopper/assets/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/font-awesome.min.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/ionicons.min.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/morris/morris.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/datepicker/datepicker3.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet"/>
        <link href="/e-shopper/assets/css/iCheck/all.css" rel="stylesheet"/>
        <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link href="/e-shopper/assets/css/style.css" rel="stylesheet" type="text/css" />

    </head>
    <body class="skin-black">
        <tiles:insertAttribute name="header-admin"></tiles:insertAttribute>
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <tiles:insertAttribute name="left-menu"></tiles:insertAttribute>
            <tiles:insertAttribute name="main-content"></tiles:insertAttribute>
        </div>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

        <script type="text/javascript"
        src="/e-shopper/assets/js/jquery.min.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/jquery-ui-1.10.3.min.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/plugins/daterangepicker/daterangepicker.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/plugins/chart.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/plugins/iCheck/icheck.min.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/plugins/fullcalendar/fullcalendar.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/Director/app.js"></script>
        <script type="text/javascript"
        src="/e-shopper/assets/js/Director/dashboard.js"></script>
        <script type="text/javascript">
            $('input').on('ifChecked', function (event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().addClass('highlight');
                $(this).parents('li').addClass("task-done");
                console.log('ok');
            });
            $('input').on('ifUnchecked', function (event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().removeClass('highlight');
                $(this).parents('li').removeClass("task-done");
                console.log('not');
            });

        </script>

    </body>
</html>
