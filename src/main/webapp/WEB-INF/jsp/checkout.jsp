<%-- 
    Document   : checkout
    Created on : Jul 6, 2017, 9:07:35 PM
    Author     : User
--%>
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
                                    <form method="post" action="">
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Name</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Email Address</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Mobile phone</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"> <span class="required">*</span><strong>Province</strong></label>
                                            <div class="controls">
                                                <select name="zone_id" class="input-xlarge">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="3513">Ho Chi Minh</option>
                                                    <option value="3514">Ha Noi</option>
                                                    <option value="3515">Da Nang</option>
                                                    <option value="3516">Hai Phong</option>
                                                    <option value="3517">Can Tho</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span> <strong>District</strong></label>
                                            <div class="controls">
                                                <select name="zone_id" class="input-xlarge">
                                                    <option value=""> --- Please Select --- </option>
                                                    <option value="3513">Hoan Kiem</option>
                                                    <option value="3514">Hai Ba Trung</option>
                                                    <option value="3515">Long Bien</option>
                                                    <option value="3516">Hoang Mai</option>
                                                    <option value="3517">Chuong My</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label"><span class="required">*</span><strong>Address</strong></label>
                                            <div class="controls">
                                                <input type="text" placeholder="" class="input-xlarge">
                                            </div>
                                        </div>
                                        <button class="btn btn-inverse pull-left">Confirm order</button>
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
