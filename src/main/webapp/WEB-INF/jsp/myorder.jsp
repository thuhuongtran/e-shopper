<%-- 
    Document   : myorder
    Created on : Jul 15, 2017, 11:14:15 AM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">				
    <div class="row">
        <div class="span9">	
            <h4 class="title"><span class="text"><strong>My</strong> Order</span></h4>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product Name</th>
                        <th>Total</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${tranList}" var="transaction">
                        <tr> 
                            <td><a href="productDetail?id=${transaction.prod_id}"><img alt="" src="${transaction.prod_image_link}"></a></td>
                            <td>${transaction.prod_name}</td>
                            <td>$${transaction.tran_amount}</td>
                            <td><strong>${transaction.tran_day}</strong></td>
                        </tr>
                    </c:forEach>

                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>		  
                </tbody>
            </table>
        </div>
        <div class="span3 col">
            <div class="block">	
                <ul class="nav nav-list">
                    <li class="nav-header">SUB CATEGORIES</li>
                    <li><a href="productList.html">Nullam semper elementum</a></li>
                    <li class="active"><a href="productList.html">Phasellus ultricies</a></li>
                    <li><a href="productList.html">Donec laoreet dui</a></li>
                    <li><a href="productList.html">Nullam semper elementum</a></li>
                    <li><a href="productList.html">Phasellus ultricies</a></li>
                    <li><a href="productList.html">Donec laoreet dui</a></li>
                </ul>
                <br/>
                <ul class="nav nav-list below">
                    <li class="nav-header">MANUFACTURES</li>
                    <li><a href="productList.html">Adidas</a></li>
                    <li><a href="productList.html">Nike</a></li>
                    <li><a href="productList.html">Dunlop</a></li>
                    <li><a href="productList.html">Yamaha</a></li>
                </ul>
            </div>
            <div class="block">
                <h4 class="title">
                    <span class="pull-left"><span class="text">Randomize</span></span>
                    <span class="pull-right">
                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                    </span>
                </h4>
                <div id="myCarousel" class="carousel slide">
                    <div class="carousel-inner">
                        <div class="active item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">
                                        <span class="sale_tag"></span>												
                                        <a href="productDetail.html"><img alt="" src="/e-shopper/assets/themes/images/ladies/2.jpg"></a><br/>
                                        <a href="productDetail.html" class="title">Fusce id molestie massa</a><br/>
                                        <a href="home" class="category">Suspendisse aliquet</a>
                                        <p class="price">$261</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">												
                                        <a href="productDetail.html"><img alt="" src="/e-shopper/assets/themes/images/ladies/4.jpg"></a><br/>
                                        <a href="productDetail.html" class="title">Tempor sem sodales</a><br/>
                                        <a href="home" class="category">Urna nec lectus mollis</a>
                                        <p class="price">$134</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>						
        </div>

    </div>
</section>	
