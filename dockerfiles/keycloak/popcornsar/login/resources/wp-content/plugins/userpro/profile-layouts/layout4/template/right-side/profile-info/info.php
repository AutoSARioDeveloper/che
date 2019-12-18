<?php
defined( 'ABSPATH' ) || exit;
?>

<div class="profile-information">
    <?php

    global $up_user;
    $profileDetails = $up_user->getUserProfileFields('view');

    foreach ($profileDetails as $field){
        $body = ' <div class="profile-information__field">';
        $body .= '<div class="up-label">'.$field['label'].'</div>';
        $body .= '<div class="up-value">'.$field['value'].'</div>';
        $body .= '</div>';

        echo $body;
    }
        ?>
</div>