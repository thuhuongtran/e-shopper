<%-- 
    Document   : productDetail
    Created on : Jul 6, 2017, 8:55:36 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.e_shopper.beans.product"%>
<section class="main-content">				
    <div class="row">						
        <div class="span9">
            <div class="row">
                <div class="span4">
                    <a href="${prod.pro_img_link}" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="${prod.pro_img_link}"></a>												
                    <ul class="thumbnails small">								
                        <li class="span1">
                            <a href="/e-shopper/assets/themes/images/ladies/2.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="/e-shopper/assets/themes/images/ladies/2.jpg" alt=""></a>
                        </li>								
                        <li class="span1">
                            <a href="/e-shopper/assets/themes/images/ladies/3.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 3"><img src="/e-shopper/assets/themes/images/ladies/3.jpg" alt=""></a>
                        </li>													
                        <li class="span1">
                            <a href="/e-shopper/assets/themes/images/ladies/4.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 4"><img src="/e-shopper/assets/themes/images/ladies/4.jpg" alt=""></a>
                        </li>
                        <li class="span1">
                            <a href="/e-shopper/assets/themes/images/ladies/5.jpg" class="thumbnail" data-fancybox-group="group1" title="Description 5"><img src="/e-shopper/assets/themes/images/ladies/5.jpg" alt=""></a>
                        </li>
                    </ul>
                </div>
                <div class="span5">
                    <address>
                        <strong>Brand:</strong> <span>Apple</span><br>
                        <strong>Product Code:</strong> <span>Product ${prod.pro_id}</span><br>
                        <strong>Reward Points:</strong> <span>0</span><br>
                        <strong>Availability:</strong> <span>${prod.pro_stock}</span><br>								
                    </address>									
                    <h4><strong>Price: $${prod.pro_price}</strong></h4>
                </div>
                <div class="span5">
                    <form class="form-inline" method="post" action="/e-shopper/cart?prod_id=${prod.pro_id}">
                        <label class="checkbox">
                            <input type="checkbox" value=""> Option one is this and that
                        </label>
                        <br/>
                        <label class="checkbox">
                            <input type="checkbox" value=""> Be sure to include why it's great
                        </label>
                        <p>&nbsp;</p>
                        <label>Quantity:</label>
                        <input type="text" name="quantity" class="span1" value="1" required="" >
                        <button class="btn btn-inverse" type="submit">Buy now</button>
                    </form>
                    
                </div>							
            </div>
            <div class="row">
                <div class="span9">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active"><a href="#home">Description</a></li>
                        <li class=""><a href="#profile">Additional Information</a></li>
                    </ul>							 
                    <div class="tab-content">
                        <div class="tab-pane active" id="home">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</div>
                        <div class="tab-pane" id="profile">
                            <table class="table table-striped shop_attributes">	
                                <tbody>
                                    <tr class="">
                                        <th>Size</th>
                                        <td>Large, Medium, Small, X-Large</td>
                                    </tr>		
                                    <tr class="alt">
                                        <th>Colour</th>
                                        <td>Orange, Yellow</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>							
                </div>						
                <div class="span9">	
                    <br>
                    <h4 class="title">
                        <span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
                        <span class="pull-right">
                            <a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
                        </span>
                    </h4>
                    <div id="myCarousel-1" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="active item">
                                <ul class="thumbnails listing-products">
                                    <li class="span3">
                                        <div class="product-box">
                                            <span class="sale_tag"></span>												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/6.jpg"></a><br/>
                                            <a href="#" class="title">Wuam ultrices rutrum</a><br/>
                                            <a href="#" class="category">Suspendisse aliquet</a>
                                            <p class="price">$341</p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="product-box">
                                            <span class="sale_tag"></span>												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/5.jpg"></a><br/>
                                            <a href="#" class="title">Fusce id molestie massa</a><br/>
                                            <a href="#" class="category">Phasellus consequat</a>
                                            <p class="price">$341</p>
                                        </div>
                                    </li>       
                                    <li class="span3">
                                        <div class="product-box">												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/4.jpg"></a><br/>
                                            <a href="#" class="title">Praesent tempor sem</a><br/>
                                            <a href="#" class="category">Erat gravida</a>
                                            <p class="price">$28</p>
                                        </div>
                                    </li>												
                                </ul>
                            </div>
                            <div class="item">
                                <ul class="thumbnails listing-products">
                                    <li class="span3">
                                        <div class="product-box">
                                            <span class="sale_tag"></span>												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/1.jpg"></a><br/>
                                            <a href="#" class="title">Fusce id molestie massa</a><br/>
                                            <a href="#" class="category">Phasellus consequat</a>
                                            <p class="price">$341</p>
                                        </div>
                                    </li>       
                                    <li class="span3">
                                        <div class="product-box">												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/2.jpg"></a><br/>
                                            <a href="#">Praesent tempor sem</a><br/>
                                            <a href="#" class="category">Erat gravida</a>
                                            <p class="price">$28</p>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="product-box">
                                            <span class="sale_tag"></span>												
                                            <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/3.jpg"></a><br/>
                                            <a href="#" class="title">Wuam ultrices rutrum</a><br/>
                                            <a href="#" class="category">Suspendisse aliquet</a>
                                            <p class="price">$341</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
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
                                        <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/7.jpg"></a><br/>
                                        <a href="#" class="title">Fusce id molestie massa</a><br/>
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
                                        <a href="#"><img alt="" src="/e-shopper/assets/themes/images/ladies/8.jpg"></a><br/>
                                        <a href="#" class="title">Tempor sem sodales</a><br/>
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
                            <img src="/e-shopper/assets/themes/images/ladies/1.jpg" alt="Praesent tempor sem sodales">
                        </a>
                        <a href="#">Praesent tempor sem</a>
                    </li>
                    <li>
                        <a href="#" title="Luctus quam ultrices rutrum">
                            <img src="/e-shopper/assets/themes/images/ladies/2.jpg" alt="Luctus quam ultrices rutrum">
                        </a>
                        <a href="#">Luctus quam ultrices rutrum</a>
                    </li>
                    <li>
                        <a href="#" title="Fusce id molestie massa">
                            <img src="/e-shopper/assets/themes/images/ladies/3.jpg" alt="Fusce id molestie massa">
                        </a>
                        <a href="#">Fusce id molestie massa</a>
                    </li>   
                </ul>
            </div>
        </div>
    </div>
</section>			

<script>
    $(function () {
        $('#myTab a:first').tab('show');
        $('#myTab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    })
    $(document).ready(function () {
        $('.thumbnail').fancybox({
            openEffect: 'none',
            closeEffect: 'none'
        });

        $('#myCarousel-2').carousel({
            interval: 2500
        });
    });
</script>
