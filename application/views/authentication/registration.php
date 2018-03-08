
<div class="col-lg-9 col-lg-offset-3">
    <h2>Hello There</h2>
    <h5>Please enter the required information below.</h5>     
<?php 
  /*  $fattr = array('class' => 'form-signin');
    echo form_open('/main/register', $fattr); ?>
    <div class="form-group">
      <?php echo form_input(array('name'=>'username', 'id'=> 'username', 'placeholder'=>'User Name', 'class'=>'form-control', 'value' => set_value('username'), 'onBlur' => 'checkAvailability()' )); ?>
      <?php echo form_error('username');?>
    </div>
    <div class="form-group">
      <?php echo form_input(array('name'=>'lastname', 'id'=> 'lastname', 'placeholder'=>'Last Name', 'class'=>'form-control', 'value'=> set_value('lastname'))); ?>
      <?php echo form_error('lastname');?>
    </div>
    <div class="form-group">
      <?php echo form_input(array('name'=>'email', 'id'=> 'email', 'placeholder'=>'Email', 'class'=>'form-control', 'value'=> set_value('email'))); ?>
      <?php echo form_error('email');?>
    </div>
    <?php echo form_submit(array('value'=>'Sign up', 'class'=>'btn btn-lg btn-primary btn-block')); ?>
    <?php echo form_close(); ?>
</div>
*/
?>

<form action="" id="the-form">
    <div class="form-group">
    <input name="emailAddress" data-validation="email" placeholder='Email Address' class='form-control' data-validation-help="Som help info...">
    </div>
    <p>
      URL
      <input name="..." data-validation="url">
    </p>
    <p>
      Only allows alphanumeric characters and hyphen and underscore
      <input name="..." data-validation="alphanumeric" data-validation-allowing="-_">
    </p>
    <p>
      Only lowercase letters a-z (regexp)
      <input name="..." data-validation="custom" data-validation-regexp="^([a-z]+)$">
    </p>
    <p>
      Minimum 5 chars
      <input name="..." data-validation="length" data-validation-length="min5">
    </p>
    <p>
      Maximum 5 chars
      <input name="..." data-validation="length" data-validation-length="max5">
    </p>
    <p>
      Between 3-5 chars
      <input name="..." data-validation="length" data-validation-length="3-5">
    </p>
    <p>
      What's your favorite color?
      <input name="..." data-suggestions="White, Green, Blue, Black, Brown">
    </p>
    <p>
      Validate e-mail but only if an answer is given
      <input name="..." data-validation="email" data-validation-optional="true">
    </p>
    <p>
      Restrict length
      <span id="max-length-element">100</span> chars left
      <textarea id="the-textarea" name="text"></textarea>
    </p>
    <p>
      <input type="submit">
    </p>
  </form>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>


<script>
  $.validate({
    lang: 'es'
  });
</script>