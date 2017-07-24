<%-- 
    Document   : successConfirm
    Created on : Jul 18, 2017, 4:21:58 PM
    Author     : User
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<aside class="right-side">
    <!-- Main content -->
    <section class="content">

        <div class="row">
            <div class="col-xs-12">
                <div class="panel">
                    <c:choose>
                        <c:when test="${succConf ==1}">
                            <center>
                                <label class="control-label" style="font-size: 16px;color: green">Your confirmation has been processed successfully.</label>
                            </center>
                        </c:when>
                        <c:when test="${succDecl==1}">
                            <center>
                                <label class="control-label" style="font-size: 16px;color: green">You have been declined an order successfully.</label>
                            </center>
                        </c:when>
                        <c:when test="${succEdit==1}">
                            <center>
                                <label class="control-label" style="font-size: 16px;color: green">Product has been updated successfully.</label>
                            </center>
                        </c:when>
                         <c:when test="${succDel==1}">
                            <center>
                                <label class="control-label" style="font-size: 16px;color: green">You has been deleted product successfully.</label>
                            </center>
                        </c:when>
                        
                         <c:when test="${succAddProd==1}">
                            <center>
                                <label class="control-label" style="font-size: 16px;color: green">New product has been added successfully.</label>
                            </center>
                        </c:when>
                    </c:choose>
                </div>
            </div>
        </div>
    </section>
</aside>
