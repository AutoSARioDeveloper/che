<?php

/* Setup global redirection */
add_action('userpro_super_get_redirect', 'userpro_super_get_redirect');
function userpro_super_get_redirect($i)
{

	if (isset($_GET['redirect_to'])) {
		?>
        <input type="hidden" name="global_redirect-<?php echo $i; ?>" id="global_redirect-<?php echo $i; ?>"
               value="<?php echo esc_url($_GET['redirect_to']); ?>"/>
		<?php
	}

}

//error log
function up_error($message = '', $array = null, $dump = false)
{

	if ($dump == false) {
		error_log($message . ' : ' . print_r($array, 1));
	} else {
        $up_error = '<pre>';
		$up_error .= var_dump($message . print_r($array,1));
		$up_error .= '</pre>';

		return $up_error;
	}

}

function up_valid_url($url){

	if(filter_var($url, FILTER_VALIDATE_URL)){
	    $validURL = $url;
    }else{
		$validURL = get_home_url();
    }
    return $validURL;

}
