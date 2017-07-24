<%-- 
    Document   : checkout
    Created on : Jul 6, 2017, 9:07:35 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">
    <div class="row">
        <div class="span12">
            <div class="accordion" id="accordion2">

                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="">Account &amp; Billing Details</a>
                    </div>
                    <div id="collapseTwo" class="accordion-body ">
                        <div class="accordion-inner">
                            <div class="row-fluid">
                                <div class="span6" style="">
                                    <h4>Your Personal Details</h4>
                                    <form method="post" action="/e-shopper/checkout">
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Name</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" required=""class="input-xlarge" name="name" 
                                                       value="${name}">
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
                                            <label class="control-label"><span class="required">*</span><strong>Email Address</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" required="" class="input-xlarge" name="email" 
                                                       value="${email}" >
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
                                            <label class="control-label"><span class="required">*</span><strong>Mobile phone</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" required=""class="input-xlarge" name="mobile"
                                                       value="${mobile}">
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
                                            <label class="control-label"> <span class="required">*</span><strong>Province</strong></label>
                                            <div class="controls">
                                                <select name="province" class="input-xlarge">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="Ho Chi Minh">Ho Chi Minh</option>
                                                    <option value="Ha Noi">Ha Noi</option>
                                                    <option value="Da Nang">Da Nang</option>
                                                    <option value="Hai Phong">Hai Phong</option>
                                                    <option value="Can Tho">Can Tho</option>
                                                </select>
                                            </div>
                                            <c:choose>
                                                <c:when test="${province eq ''}">
                                                    <div class="error"style="color: red">Please place your province.</div>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span> <strong>District</strong></label>
                                            <div class="controls">
                                                <select name="district" class="input-xlarge">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="Hoan Kiem">Hoan Kiem</option>
                                                    <option value="Hai Ba Trung">Hai Ba Trung</option>
                                                    <option value="Long Bien">Long Bien</option>
                                                    <option value="Hoang Mai">Hoang Mai</option>
                                                    <option value="Chuong My">Chuong My</option>
                                                </select>
                                            </div>
                                            <c:choose>
                                                <c:when test="${district eq ''}">
                                                    <div class="error"style="color: red">Please place your district.</div>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Address</strong></label>
                                            <div class="controls">
                                                <input type="text" required="" placeholder="" class="input-xlarge" name="address"
                                                       value="${address}">
                                            </div>
                                            <c:choose>
                                                <c:when test="${addressVali == 1}">
                                                    <div class="error"style="color: red">Please place your address.</div>
                                                </c:when>
                                                <c:when test="${addressVali ==2}">
                                                    <div class="error"style="color: red">Your address has to be at least 8 charaters long.</div>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                        <button class="btn btn-inverse pull-left" type="submit">Confirm order</button>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </div>				
        </div>
    </div>
</section>			
