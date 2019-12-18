<?php

if ( !defined('ABSPATH') ) {
    //If wordpress isn't loaded load it up.
    $path = $_SERVER['DOCUMENT_ROOT'];
    include_once $path . '/wp-load.php';
}

/******************************************
 * Twitter auth ($_REQUEST)
 ******************************************/
if(isset($_REQUEST['oauth_verifier']) && isset($_REQUEST['oauth_token'])) {
    require_once(userpro_path . 'functions/socials/TwitterAuth.php');

    $twitter = new TwitterAuth();
    $twitter->login();
}

