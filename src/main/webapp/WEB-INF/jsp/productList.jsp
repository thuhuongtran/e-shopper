<%-- 
    Document   : productList
    Created on : Jul 6, 2017, 8:40:56 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">

    <div class="row">						
        <div class="span9">								
            <ul class="thumbnails listing-products">
                <c:forEach items="${proList}" var="prod" end="9" begin="1">
                    <li class="span3">
                    <div class="product-box">												
                        <a href="productDetail?id=${prod.pro_id}"><img alt="" src="${prod.pro_img_link}"></a><br/>
                        <a href="productDetail?id=${prod.pro_id}" class="title">${prod.pro_name}</a><br/>
                        <a href="#" class="category">Erat gravida</a>
                        <p class="price">$${prod.pro_price}</p>
                    </div>
                </li>
                </c:forEach>
                
            </ul>								
            <hr>
            <div class="pagination pagination-small pagination-centered">
                <ul>
                    <li><a href="#">Prev</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">Next</a></li>
                </ul>
            </div>
        </div>
        <div class="span3 col">
            <div class="block">	
                <ul class="nav nav-list">
                    <li class="nav-header">SUB CATEGORIES</li>
                    <li><a href="products.html">Nullam semper elementum</a></li>
                    <li class="active"><a href="products.html">Phasellus ultricies</a></li>
                    <li><a href="products.html">Donec laoreet dui</a></li>
                    <li><a href="products.html">Nullam semper elementum</a></li>
                    <li><a href="products.html">Phasellus ultricies</a></li>
                    <li><a href="products.html">Donec laoreet dui</a></li>
                </ul>
                <br/>
                <ul class="nav nav-list below">
                    <li class="nav-header">MANUFACTURES</li>
                    <li><a href="products.html">Adidas</a></li>
                    <li><a href="products.html">Nike</a></li>
                    <li><a href="products.html">Dunlop</a></li>
                    <li><a href="products.html">Yamaha</a></li>
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
                                        <img alt="" src="/e-shopper/assets/themes/images/ladies/1.jpg"><br/>
                                        <a href="productDetail.html" class="title">Fusce id molestie massa</a><br/>
                                        <a href="#" class="category">Suspendisse aliquet</a>
                                        <p class="price">$261</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="item">
                            <ul class="thumbnails listing-products">
                                <li class="span3">
                                    <div class="product-box">												
                                        <img alt="" src="/e-shopper/assets/themes/images/ladies/2.jpg"><br/>
                                        <a href="productDetail.html" class="title">Tempor sem sodales</a><br/>
                                        <a href="#" class="category">Urna nec lectus mollis</a>
                                        <p class="price">$134</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block">								
                <h4 class="title"><strong>Best</strong> Seller</h4>								
                <ul class="small-product">
                    <li>
                        <a href="#" title="Praesent tempor sem sodales">
                            <img src="/e-shopper/assets/themes/images/ladies/3.jpg" alt="Praesent tempor sem sodales">
                        </a>
                        <a href="#">Praesent tempor sem</a>
                    </li>
                    <li>
                        <a href="#" title="Luctus quam ultrices rutrum">
                            <img src="/e-shopper/assets/themes/images/ladies/4.jpg" alt="Luctus quam ultrices rutrum">
                        </a>
                        <a href="#">Luctus quam ultrices rutrum</a>
                    </li>
                    <li>
                        <a href="#" title="Fusce id molestie massa">
                            <img src="/e-shopper/assets/themes/images/ladies/5.jpg" alt="Fusce id molestie massa">
                        </a>
                        <a href="#">Fusce id molestie massa</a>
                    </li>   
                </ul>
            </div>
        </div>
    </div>
</section>