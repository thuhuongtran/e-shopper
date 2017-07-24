<%-- 
    Document   : login
    Created on : Jul 6, 2017, 6:09:11 PM
    Author     : User
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">				
    <div class="row">
        <div class="span12">					
            <h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
            <form action="/e-shopper/signin" method="post">
                <input type="hidden" name="next" value="/">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label">Email</label>
                        <div class="controls">
                            <input type="text" required=""name="email" placeholder="Enter your email" id="username" class="input-xlarge" value="${email}">

                        </div>
                        <c:choose>
                            <c:when test="${emailVali==1}">
                                <div class="error"style="color: red">Please place your true email address.</div>
                            </c:when>
                            <c:when test="${emailVali == 2}">
                                <div class="error"style="color: red">Your email has to have true format.</div>
                            </c:when>
                        </c:choose>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Password</label>
                        <div class="controls">
                            <input type="password" required="" name="pass" placeholder="Enter your password" id="password" class="input-xlarge">

                        </div>
                        <c:choose>
                            <c:when test="${passVali==1}">
                                <div class="error" style="color: red">Please place your true name.</div>
                            </c:when>
                            <c:when test="${passVali==2}">
                                <div class="error" style="color: red">Your name has to be at least 6 characters long.</div>
                            </c:when>
                            <c:when test="${passVali==3}">
                                <div class="error" style="color: red">Wrong email or password.</div>
                            </c:when>
                        </c:choose>
                    </div>
                    <div class="control-group">
                        <input tabindex="3" class="btn btn-inverse large" type="submit" value="Sign into your account">
                        <hr>
                        <p class="reset">Recover your <a tabindex="4" href="#" title="Recover your username or password">username or password</a></p>
                    </div>
                </fieldset>
            </form>				
        </div>

    </div>
</section>			
