<?php

// Load WordPress functions
if (!defined('ABSPATH')) {
    //If wordpress isn't loaded load it up.
    $path = $_SERVER['DOCUMENT_ROOT'];
    include_once $path . '/wp-load.php';
}

if (!empty($_GET['code'])) {
    require(userpro_path . 'functions/socials/LinkedinAuth.php');

    $linkedin = new LinkedinAuth();

    $linkedin->login($_GET['code']);

}
