<%--<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>--%>
<%@page import="com.e_shopper.dao.daoActions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<aside class="right-side">
    <!-- Main content -->
    <section class="content">
        <!-- Main row -->
        <div class="row">

            <div class="col-md-8">
                <!--earning graph start-->
                <section class="panel">
                    <header class="panel-heading">
                        Earning Graph
                    </header>
                    <div class="panel-body ">
                        <canvas id="linechart" width="600" >        </canvas>             
                        <table class="table table-hover" width="600">
                            <tr>
                                <th>Number</th>        
                                <th>ID Oder</th>
                                <th>ID Custom</th>
                                <th>Amount</th>
                                <th>Created</th>
                                <th>ID Product</th>
                                <th>Product Name</th>
                                <th>Image</th>
                                <th></th>
                                <th></th>
                            </tr>
                            <%
                                int i = 1;
                            %>
                            <c:forEach items="${tranList}" var="tran" >
                                <tr>
                                    <td><%
                                        out.print(i++);
                                        %></td>

                                    <td>${tran.order_id}</td>
                                    <td>${tran.custom_id}</td>
                                    <td>${tran.tran_amount}</td>
                                    <td>${tran.tran_day}</td>
                                    <td>${tran.prod_id}</td>
                                    <td>${tran.prod_name}</td>
                                    <td><a href="productDetail?id=${tran.prod_id}">
                                            <img alt="" src="${tran.prod_image_link}">
                                        </a>
                                        <br/>                                                             
                                </tr>
                            </c:forEach>
                        </table>  
                    </div>
                </section>
                <!--earning graph end-->
        </div>
        <div class="col-lg-4">

            <!--chat start-->
            <section class="panel">
                <header class="panel-heading">
                    Notifications
                </header>
                <div class="panel-body" id="noti-box">

                    <div class="alert alert-block alert-danger">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Oh snap!</strong> Change a few things up and try submitting again.
                    </div>
                    <div class="alert alert-success">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Well done!</strong> You successfully read this important alert message.
                    </div>
                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                    </div>
                    <div class="alert alert-warning">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Warning!</strong> Best check yo self, you're not looking too good.
                    </div>


                    <div class="alert alert-block alert-danger">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Oh snap!</strong> Change a few things up and try submitting again.
                    </div>
                    <div class="alert alert-success">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Well done!</strong> You successfully read this important alert message.
                    </div>
                    <div class="alert alert-info">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                    </div>
                    <div class="alert alert-warning">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Warning!</strong> Best check yo self, you're not looking too good.
                    </div>



                </div>
            </section>



        </div>
        </div>
    </section>
</aside>
<script>
    $('#noti-box').slimScroll({
        height: '400px',
        size: '5px',
        BorderRadius: '5px'
    });

    $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
        checkboxClass: 'icheckbox_flat-grey',
        radioClass: 'iradio_flat-grey'
    });
</script>
