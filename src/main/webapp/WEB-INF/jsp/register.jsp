<%-- 
    Document   : register
    Created on : Jul 8, 2017, 10:03:40 AM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">		
    <div class="row">
        <div class="span12">					
            <h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
            <form action="/e-shopper/signup" method="post" class="form-stacked">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label">Name</label>
                        <div class="controls">
                            <input type="text" required="" value="${name}"name="name"placeholder="Enter your name" class="input-xlarge">
                        </div>
                        <c:choose>
                            <c:when test="${nameVali==1}">
                                <div class="error" style="color: red">Please place your true name.</div>
                            </c:when>
                            <c:when test="${nameVali==2}">
                                <div class="error" style="color: red">Your name has to be at least 6 characters long.</div>
                            </c:when>
                        </c:choose>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Email address:</label>
                        <div class="controls">
                            <input type="text" name="email"required="" value="${email}"placeholder="Enter your email" class="input-xlarge">
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
                        <label class="control-label">Mobile phone</label>
                        <div class="controls">
                            <input type="text" required="" name="mobile"placeholder="Enter your mobile phone" value="${mobile}"class="input-xlarge">
                        </div>
                        <c:choose>
                            <c:when test="${mobileVali == 1}">
                                <div class="error"style="color: red">Please place your true mobile phone.</div>
                            </c:when>
                            <c:when test="${mobileVali == 2}">
                                <div class="error"style="color: red">Your mobile phone has to have at least 8 characters long.</div>
                            </c:when>
                        </c:choose>
                    </div>
                    <div class="control-group">
                        <label class="control-label">Password:</label>
                        <div class="controls">
                            <input type="password" name="pass"required=""placeholder="Enter your password" class="input-xlarge">
                        </div>
                        <c:choose>
                            <c:when test="${passVali==1}">
                                <div class="error" style="color: red">Please place your true name.</div>
                            </c:when>
                            <c:when test="${passVali==2}">
                                <div class="error" style="color: red">Your name has to be at least 6 characters long.</div>
                            </c:when>
                        </c:choose>
                    </div>							                            
                    <div class="control-group">
                        <p>Now that we know who you are. I'm not a mistake! In a comic, you know how you can tell who the arch-villain's going to be?</p>
                    </div>
                    <hr>
                    <div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Create your account"></div>
                </fieldset>
            </form>					
        </div>	
    </div>
</section>			
