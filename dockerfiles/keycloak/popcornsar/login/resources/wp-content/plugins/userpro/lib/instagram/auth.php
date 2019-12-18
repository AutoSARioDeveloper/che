<?php

if ( !defined('ABSPATH') ) {
	//If wordpress isn't loaded load it up.
	$path = $_SERVER['DOCUMENT_ROOT'];
	include_once $path . '/wp-load.php';
}
if(isset($_GET['code'])){
	require_once(userpro_path.'functions/socials/InstagramAuth.php');

    // Send auth code to Instagram Object
	$instagram = new InstagramAuth();
	$instagram->login($_GET['code']);
}