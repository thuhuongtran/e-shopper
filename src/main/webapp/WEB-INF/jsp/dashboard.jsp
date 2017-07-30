<%--<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>--%>
<%@page import="com.e_shopper.dao.daoActions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<aside class="right-side">
    <!-- Main content -->
    <section class="content">
        <!-- Main row -->
        <div class="row">

            <div class="col-xs-12">
                <!--earning graph start-->
                <div class="panel">
                    <header class="panel-heading">
                        Transactions
                    </header>
                    <div class="panel-body table-responsive">
                        <table class="table table-hover">
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
                </div>
                <!--earning graph end-->
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
