<%-- 
    Document   : addProd
    Created on : Jul 18, 2017, 11:19:14 PM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
    <!-- Content Header (Page header) -->
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-lg-8">
                <section class="panel">
                    <header class="panel-heading">
                        Add new product
                    </header>
                    <div class="panel-body">
                        <form role="form" action="/e-shopper/admin/addNewProd" method="post">
                            <div class="form-group">
                                <label for="exampleInputEmail1">Product Name</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" name="prod_name" value="${pro_name}">
                                <c:choose>
                                    <c:when test="${proNamVali==1}">
                                        <div class="error" style="color: red">You have to enter product name here.</div>
                                    </c:when>
                                    <c:when test="${proNamVali==2}">
                                        <div class="error" style="color: red">Product name has to be at least 6 characters long.</div>
                                    </c:when>
                                </c:choose>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Product Price</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="prod_price"value="${pro_price}">
                                 <c:choose>
                                    <c:when test="${proPricVali==1}">
                                        <div class="error" style="color: red">You have to enter product price here.</div>
                                    </c:when>
                                    <c:when test="${proPricVali==2}">
                                        <div class="error" style="color: red">Product price is a number.</div>
                                    </c:when>
                                 </c:choose>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Product Stock</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="prod_stock" value="${pro_stock}">
                                 <c:choose>
                                    <c:when test="${proStoVali==1}">
                                        <div class="error" style="color: red">You have to enter product stock here.</div>
                                    </c:when>
                                    <c:when test="${proStoVali==2}">
                                        <div class="error" style="color: red">Product stock is a number.</div>
                                    </c:when>
                                 </c:choose>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Image Link</label>
                                <input type="text" class="form-control" id="exampleInputPassword1" name="prod_img_link" value="${pro_img_link}">
                                 <c:choose>
                                    <c:when test="${proImgLinkVali==1}">
                                        <div class="error" style="color: red">You have to enter product image link here.</div>
                                    </c:when>
                                    <c:when test="${proImgLinkVali==2}">
                                        <div class="error" style="color: red">Please link to the true image address.</div>
                                    </c:when>
                                 </c:choose>
                            </div>

                            <button type="submit" class="btn btn-info">Submit</button>
                        </form>

                    </div>
                </section>
            </div>
        </div>          
    </section>
</aside>
