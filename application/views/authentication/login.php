<div class="col-lg-6 col-lg-offset-6">
    <h2>Please login</h2>
    <?php $fattr = array('class' => 'form-signin');
         echo form_open(site_url().'home/login/', $fattr); ?>
    <div class="form-group">
      <?php echo form_input(array(
          'name'=>'userName', 
          'id'=> 'userName', 
          'placeholder'=>'User Name', 
          'class'=>'form-control', 
          'value'=> set_value('userName'))); ?>
      <?php echo form_error('userName') ?>
    </div>
    <div class="form-group">
      <?php echo form_password(array(
          'name'=>'password', 
          'id'=> 'password', 
          'placeholder'=>'Password', 
          'class'=>'form-control', 
          'value'=> set_value('password'))); ?>
      <?php echo form_error('password') ?>
    </div>
    <?php echo form_submit(array('value'=>'Let me in!', 'class'=>'btn btn-lg btn-primary btn-block')); ?>
    <?php echo form_close(); ?>
    <p>Don't have an account? Click to <a href="<?php echo site_url();?>home/create">Register</a></p>
    <p>Click <a href="<?php echo site_url();?>home/forgot">here</a> if you forgot your password.</p>
</div>