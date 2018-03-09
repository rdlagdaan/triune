
<div class="col-lg-9 col-lg-offset-3">
    <h2>TRIUNE</h2>
    <h5>Please enter the required information below.</h5>     

<form action="" id="the-form">


     <div class="input-group col-md-10 input-group-md">

      <div class="input-group-prepend">
            <div class="input-group-text bg-transparent"><i class="fa fa-user" style="color: blue"></i></div>
      </div>
      

      <input name="userName" data-validation="alphanumeric" id="username" placeholder='User Name' class='form-control'  data-validation-error-msg="Please enter a valid username" data-validation-error-msg-container="#message-location" onBlur="checkAvailability()" onFocus="clearMessages()">
      <span class="input-group-append">
          <div class="input-group-text bg-transparent">
            <i class="fa fa-user-plus" id="available" style="display:none; color:green"></i>
            <i class="fa fa-user-times" id="notAvailable" style="display:none; color:red" ></i>
          </div>
            
      </span>
      <span class="input-group-append">
        <i id='status-available' style="display:none; color:green; padding: .5em; font-size:.7em; font-family: Arial, Helvetica, sans-serif; "> Username <br> Available.</i>
        <i id='status-not-available' style="display:none; color:red; padding: .5em; font-size:.7em; font-family: Arial, Helvetica, sans-serif;"> Username <br> Not Available.</i>
      </span>
    </div>
    <span>
        <i><img src="<?php echo base_url();?>assets/images/LoaderIcon.gif" class ="progressIconRight" id="loaderIcon" style="display:none" /></i>
        <b id="message-location" style="color:red; padding: 1em; font-size:.7em; font-family: Arial, Helvetica, sans-serif;"></b>
    </span>

    
    <div class="form-group col-lg-6 input-group-sm">
    <input type="submit">
    </div>
  </form>


 

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>


<script>
  $.validate({
    lang: 'es'
  });



  function checkAvailability() {
    $("#loaderIcon").show();
    jQuery.ajax({
      url: "triuneMain/checkUserName",
      data:'username='+$("#username").val(),
      type: "POST",
      success:function(data){
      if(data == 0) {
        $("#status-not-available").hide();
        $("#status-available").show();
        $("#loaderIcon").hide();
        $("#notAvailable").hide();
        $("#available").show();
      } else {
        $("#status-available").hide();
        $("#status-not-available").show();
        $("#loaderIcon").hide();
        $("#available").hide();
        $("#notAvailable").show();
      }

    },
        error:function (){}
    });
  }


  function clearMessages() {
    $("#status-not-available").hide();
    $("#status-available").hide();
    $("#available").hide();
    $("#notAvailable").hide();

  }


</script>