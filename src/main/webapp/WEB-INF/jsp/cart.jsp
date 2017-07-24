<%-- 
    Document   : cart
    Created on : Jul 6, 2017, 11:18:35 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">				
    <div class="row">
        <div class="span9">	
            <form class="form-inline" method="post" action="/e-shopper/cart">
                <h4 class="title"><span class="text"><strong>Your</strong> Cart</span></h4>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Remove</th>
                            <th>Image</th>
                            <th>Product Name</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${cart}" var="item">
                            <tr>
                                <td>
                                    <input type="checkbox" value="${item.prod.pro_id}" name="remove">
                                </td>
                                <td><a href="productDetail?id=${item.prod.pro_id}"><img alt="" src="${item.prod.pro_img_link}"></a></td>
                                <td>${item.prod.pro_name}</td>
                                <td><label>${item.quantity}</label></td>
                                <td>$${item.prod.pro_price}</td>
                                <td>$${item.getAmount()}</td>

                            </tr>
                        </c:forEach>

                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td><strong>Total</strong></td>
                            <td><strong>$${amountTotal}</strong></td>
                        </tr>		  
                    </tbody>
                </table>
                <h4>What would you like to do next?</h4>
                <p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
                <label class="radio">
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
                    Use Coupon Code
                </label>
                <br/>
                <label class="radio">
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                    Estimate Shipping &amp; Taxes
                </label>
                <hr>
                <p class="cart-total right">
                    <strong>Sub-Total</strong>: $${amountTotal}<br>
                    <strong>Eco Tax (-0.00)</strong>: $0.00<br>
                    <strong>VAT (0.00%)</strong>: $0.00<br>
                    <strong>Total</strong>: $${amountTotal}<br>
                </p>
                <hr/>
                <p class="buttons center">				
                    <button class="btn" type="submit">Update</button>
                    <button class="btn" type="button"><a style="color: #333" href="/e-shopper/productList">Continue</a></button>
                    <button class="btn btn-inverse" type="button" id="checkout">
                        <a style="color: #fff"href="/e-shopper/checkout">Checkout</a>
                    </button>
                </p>			
            </form>
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
