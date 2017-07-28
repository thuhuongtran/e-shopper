<%-- 
    Document   : orderBooking
    Created on : Jul 17, 2017, 4:17:30 PM
    Author     : User
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside class="right-side">
    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-xs-12">
                <div class="panel">
                    <header class="panel-heading">
                        <c:choose>
                            <c:when test="${not empty date}">
                                <strong>Invoices on ${date}</strong>
                            </c:when>
                            <c:otherwise>
                                <strong>Unprocessed Invoices</strong>
                            </c:otherwise>
                        </c:choose>
                    </header>
                    <!-- <div class="box-header"> -->
                    <!-- <h3 class="box-title">Responsive Hover Table</h3> -->

                    <!-- </div> -->
                    <div class="panel-body table-responsive">
                        <div class="box-tools m-b-15">
                            <div class="input-group">
                                <form action="/e-shopper/admin/searchOrder" method="post">
                                    <input type="date" name="searchOrd" class="form-control input-sm pull-left date" style="width: 150px;" />
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-default" type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <table class="table table-hover">
                            <tr>
                                <th>Number</th>
                                <th>Name</th>
                                <th>Mobile phone</th>
                                <th>Email</th>
                                <th>Address</th>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th>Amount</th>
                                <th>Order Date</th>
                                <th></th>
                                <th></th>
                            </tr>
                            <%
                                int i = 1;
                            %>
                            <c:forEach items="${orderList}" var="order" >
                                <tr>
                                    <td><%
                                        out.print(i++);
                                        %></td>
                                    <td>${order.cus_name}</td>
                                    <td>${order.cus_phone}</td>
                                    <td>${order.cus_email}</td>
                                    <td>${order.cus_addr}</td>
                                    <td><a href="productDetail?id=${order.prod_id}">
                                            <img alt="" src="${order.prod_img_link}">
                                        </a>
                                        <br/>
                                <center><strong>${order.prod_name}</strong></center>
                                </td>
                                <td>${order.quantity}</td>
                                <td><strong>$</strong>${order.amount}</td>
                                <td>${order.ord_date}</td>
                                <td> <a href="/e-shopper/admin/confirmOder?ord_id=${order.ord_id}" data-toggle="modal" class="btn btn-xs btn-success" >
                                        Confirm
                                    </a>
                                </td>
                                <td>
                                    <a href="/e-shopper/admin/declineOrder?ord_id=${order.ord_id}" data-toggle="modal" class="btn btn-xs btn-warning">
                                        Decline
                                    </a>
                                </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>

    </section>
</aside>

