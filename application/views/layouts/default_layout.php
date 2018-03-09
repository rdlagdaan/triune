<!DOCTYPE html>
<html lang="en">
<head>
	<title>Triune - <?php echo $title;?></title>

	<meta name="description" content="overview &amp; stats" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="<?php echo base_url();?>assets/stylesheets/bootstrap.css" />
	<link rel="stylesheet" href="<?php echo base_url();?>assets/stylesheets/fontawesome-free-5.0.8/web-fonts-with-css/css/fontawesome-all.min.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto" />
	<link rel="stylesheet" href="<?php echo base_url();?>assets/stylesheets/triune.css" />
	
	<!-- page specific plugin styles -->
</head>
 
<body class="no-skin">
<div id="navbar" class="navbar navbar-default">

</div>

<div class="page-content">
   
<div class="row">

    <div class="col-lg-6">

    </div>
    <div class="col-lg-6">
					<!-- PAGE CONTENT BEGINS -->
									<?php echo $contents;?>
					<!-- PAGE CONTENT ENDS -->
	</div><!-- /.col -->
</div><!-- /.row -->
</div><!-- /.page-content -->
</div>
</div><!-- /.main-content -->

<div class="footer">
<div class="footer-inner">
<div class="footer-content">
<span class="bigger-120">
	Copyright © Trinity University of Asia. All rights reserved.
</span>
</div>
</div>
</div>

<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
</a>
</div><!-- /.main-container -->
 
<!-- basic scripts -->
<script type="text/javascript" src="<?php echo base_url();?>assets/scripts/jquery-3.3.1.min.js"></script>
<script src="<?php echo base_url();?>assets/scripts/bootstrap.js"></script>
</body>
</html>