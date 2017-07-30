<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="top-bar" class="container">
    <div class="row">
        <div class="span4">
            <form method="POST" action="/e-shopper/search_prod"class="search_form">
                <input type="text" class="input-block-level search-query"
                       Placeholder="eg. T-sirt" name="inStr">
            </form>
        </div>
        <div class="span8">
            <div class="account pull-right">
                <ul class="user-menu">
                    <li><a href="/e-shopper/myorder">My Order</a></li>
                    <li><a href="/e-shopper/cart">Your Cart</a></li>
                    <li><a href="/e-shopper/checkout">Checkout</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.custom==null}">
                            <li><a href="/e-shopper/signin.html">Login</a></li>
                            <li><a href="/e-shopper/signup">Register</a></li>
                            </c:when>
                            <c:otherwise>
                            <li><a href="/e-shopper/signout">Logout</a></li>
                            </c:otherwise>
                        </c:choose>

                </ul>
            </div>
        </div>
    </div>
</div>
<div id="wrapper" class="container">
    <section class="navbar main-menu">
        <div class="navbar-inner main-menu">
            <a href="/e-shopper" class="logo pull-left"><img
                    src="/e-shopper/assets/themes/images/logo.png" class="site_logo" alt=""></a>
            <nav id="menu" class="pull-right">
                <ul>
                    <li><a href="./productList.html">Woman</a>
                        <ul>
                            <li><a href="./productList.html">Lacinia nibh</a></li>
                            <li><a href="./productList.html">Eget molestie</a></li>
                            <li><a href="./productList.html">Varius purus</a></li>
                        </ul></li>
                    <li><a href="./productListMan.html">Man</a></li>
                    <li><a href="./productList.html">Sport</a>
                        <ul>
                            <li><a href="./productList.html">Gifts and Tech</a></li>
                            <li><a href="./productList.html">Ties and Hats</a></li>
                            <li><a href="./productList.html">Cold Weather</a></li>
                        </ul></li>
                    <li><a href="./productList.html">Hangbag</a></li>
                    <li><a href="./productList.html">Best Seller</a></li>
                    <li><a href="./productList.html">Top Seller</a></li>
                </ul>
            </nav>
        </div>
    </section>

</div>
