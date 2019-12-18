<?php

if (!defined('ABSPATH')) {
    exit;
}

class UP_UserAdminAjax extends UP_Ajax{

    /**
     * User ajax events instance.
     *
     * @since 4.9.31
     * @var null
     */
    protected static $instance = null;

    /**
     * Register ajax events. true|false for priv/nopriv ajax methods.
     *
     * @since 4.9.31
     * @var array
     */
    protected $ajax_events = [
        'user_invite' => true,
    ];

    /**
     * Create instance of UserPro admin ajax class
     *
     * @since 4.9.31
     * @return UP_UserAdminAjax|null
     */
    public static function instance()
    {
        if (is_null(self::$instance)) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    public function __construct()
    {
        $this->registerAjaxEvents();
    }

    /**
     * Send user invitation email.
     * @since 4.9.31
     */
    public static function user_invite()
    {
        if(empty($_POST['emails'])){
            wp_send_json_error(__('Please enter email address to invite user', 'userpro'), 409);
        }
        $ccEmails = null;
        //Trim white spaces from emails
        $emails = preg_replace('/\s+/', '', $_POST['emails']);
        $emails = explode(',', $emails);

        $warning_response = [];
        // Get
        if(!empty($_POST['cc_emails'])){
            $ccEmails = preg_replace('/\s+/', '', $_POST['cc_emails']);
            $ccEmails = explode(',', $ccEmails);
            foreach ($ccEmails as $email){
                if(filter_var($email, FILTER_VALIDATE_EMAIL) === FALSE) {
                    wp_send_json_error(__('Not a valid email address', 'userpro'), 409);
                }
            }
        }

        foreach($emails as $email) {
            if(filter_var($email, FILTER_VALIDATE_EMAIL) === FALSE) {
                wp_send_json_error(__('Not a valid email address', 'userpro'), 409);
            }else{
                $invitedUsers = new UP_UserInvitation();
                $userEmails = $invitedUsers->getAll();

                if(in_array($email, array_column($userEmails, 'email'))){
                    $warning_response[] = ['status' => 'warning', 'message' => __('Emails address already exist','userpro')];
                    continue;
                }

                $isInvited = $invitedUsers -> send($email, $ccEmails);
                if (!$isInvited) {
                    wp_send_json_error(__('User with this email is already registered.', 'userpro'), 409);
                }

            }
        }

        $response = !empty($warning_response) ? $warning_response : __('Invitation mail sent Successfully!', 'userpro');

        wp_send_json_success($response, 200);
    }
}