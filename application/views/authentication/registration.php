
<div class="col-lg-9 col-lg-offset-3">
    <h3>TRIUNE</h3>
    <h6>Please enter the required information below.</h6>     

<!--START ------------------------------ registration FORM  -------------------------------------------START -->
<form action="" class="test-form toggle-disabled" role="form">
  
  <!--START ------------------------------ userName TextBox  -------------------------------------------START -->
  <div class="input-group col-md-10 input-group-md">
        <div class="input-group-prepend">
              <div class="input-group-text bg-transparent">
                <i class="fa fa-user" style="color: gold"></i>
              </div>
        </div>
        <input name="userName" data-validation="alphanumeric" id="userName" placeholder='User Name' class='form-control'  data-validation-error-msg="Please enter a valid username" data-validation-error-msg-container="#messageValidationLocationUserName" onBlur="checkUserAvailability()" onFocus="clearValidationMessages()">
        <span class="input-group-append">
            <div class="input-group-text bg-transparent">
              <i class="fa fa-user-plus" id="iconAvailable" style="display:none; color:green"></i>
              <i class="fa fa-user-times" id="iconNotAvailable" style="display:none; color:red" ></i>
            </div>
        </span>
        <span class="input-group-append">
          <i class="textBoxMessageAvailableMd" id='messageAvailable' > Username <br> Available.</i>
          <i class="textBoxMessageNotAvailableMd" id='messageNotAvailable' > Username <br> Not Available.</i>
        </span>
  </div>
  <span>
    <i><img src="<?php echo base_url();?>assets/images/LoaderIcon.gif" class ="progressImageRight" id="iconLoader"  /></i>
    <b class="jQueryFormValidationMessage" id="messageValidationLocationUserName"></b>
  </span>
  <!--END ------------------------------ userName TextBox  -------------------------------------------END -->


  <!--START ------------------------------ emailAddress TextBox  -------------------------------------------START -->
  <div class="input-group col-md-10 input-group-md">
        <div class="input-group-prepend">
              <div class="input-group-text bg-transparent">
                <i class="fa fa-envelope" style="color: gold"></i>
              </div>
        </div>
        <input name="emailAddress" data-validation="email" id="emailAddress" placeholder='Email Address' class='form-control'  data-validation-error-msg="Please enter a valid Email Address" data-validation-error-msg-container="#messageValidationLocationEmailAddress" onBlur="" onFocus="">
  </div>
  <span>
    <b class="jQueryFormValidationMessage" id="messageValidationLocationEmailAddress"></b>
  </span>
  <!--END ------------------------------ emailAddress TextBox  -------------------------------------------END -->




  <!--START ------------------------------ signUp Button  -------------------------------------------START -->
  <div class="form-group col-lg-6 input-group-sm">
    <input type="submit" value='Sign up'  class='btn btn-md btn-primary btn-block'>
  </div>
  <!--END ------------------------------ signUp Button  -------------------------------------------END -->


</form>
<!--END ------------------------------ registration FORM  -------------------------------------------END -->




<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>


<script>
  $.validate({
    modules : 'security', 'toggleDisabled',
    disabledFormFilter : 'form.toggle-disabled',
    showErrorDialogs : false
  });



  function checkUserAvailability() {
    $("#iconLoader").show();
    jQuery.ajax({
      url: "triuneMain/checkUserName",
      data:'userName='+$("#userName").val(),
      type: "POST",
      success:function(data){
      if(data == 0) {
        $("#messageNotAvailable").hide();
        $("#messageAvailable").show();
        $("#iconLoader").hide();
        $("#iconNotAvailable").hide();
        $("#iconAvailable").show();
      } else {
        $("#messageAvailable").hide();
        $("#messageNotAvailable").show();
        $("#iconLoader").hide();
        $("#iconAvailable").hide();
        $("#iconNotAvailable").show();
      }

    },
        error:function (){}
    });
  }


  function clearValidationMessages() {
    $("#messageNotAvailable").hide();
    $("#messageAvailable").hide();
    $("#iconAvailable").hide();
    $("#iconNotAvailable").hide();

  }
</script>