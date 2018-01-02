<?php require_once('../private/initialize.php'); ?>

<?php $page_title = 'Inventory Setting'; ?>
<?php include(SETTING_PATH . '/header.php'); ?>
<?php include(SETTING_PATH . '/logNav.php'); ?>


<div id="page-content">
	<div class='login'>
	    <h1>Login To Your Account</h1>
	    <input id="name" placeholder='Username' type='text'><br>
	    <input id="password" placeholder='Password' type='password'><br>
	    <button id="log_in_btn">Login</button>
	    <span id="loginFail" style="color:red;"></span>
  	</div>
</div>


<?php include(SHARED_PATH . '/footer.php'); ?>		