<div class="col-lg-4 col-lg-offset-4">
    <h2>Reset your password</h2>
    <h5>Hello <span><?php echo $firstName; ?></span>, Please enter your password 2x below to reset</h5>     
<?php 
    $fattr = array('class' => 'form-signin');
    echo form_open(site_url().'triuneMain/resetPassword/token/'.$token, $fattr); ?>
    <div class="form-group">
      <?php echo form_password(array('name'=>'password', 'id'=> 'password', 'placeholder'=>'Password', 'class'=>'form-control', 'value' => set_value('password'))); ?>
      <?php echo form_error('password') ?>
    </div>
    <div class="form-group">
      <?php echo form_password(array('name'=>'passwordConfirmation', 'id'=> 'passwordConfirmation', 'placeholder'=>'Confirm Password', 'class'=>'form-control', 'value'=> set_value('passwordConfirmation'))); ?>
      <?php echo form_error('passconf') ?>
    </div>
    <?php echo form_hidden('ID', $ID);?>
    <?php echo form_submit(array('value'=>'Reset Password', 'class'=>'btn btn-lg btn-primary btn-block')); ?>
    <?php echo form_close(); ?>
   
</div>