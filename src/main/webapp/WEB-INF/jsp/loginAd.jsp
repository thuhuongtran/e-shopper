<%-- 
    Document   : loginAd
    Created on : Jul 18, 2017, 11:43:49 PM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="main-content">				
    <div class="row">
        <div class="span12">					
            <h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
            <form action="#" method="post">
                <input type="hidden" name="next" value="/">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label">Name</label>
                        <div class="controls">
                            <input type="text" required=""name="ad_name" placeholder="Enter your name here" id="username" class="input-xlarge">

                        </div>
                        
                    </div>
                    <div class="control-group">
                        <label class="control-label">Password</label>
                        <div class="controls">
                            <input type="password" required="" name="ad_pass" placeholder="Enter your password here" id="password" class="input-xlarge">

                        </div>
                       
                    </div>
                    <div class="control-group">
                        <input tabindex="3" class="btn btn-inverse large" type="submit" value="Sign in">
                        <hr>
                        <p class="reset">Recover your <a tabindex="4" href="#" title="Recover your username or password">username or password</a></p>
                    </div>
                </fieldset>
            </form>				
        </div>

    </div>
</section>	