<?php

if (!defined('ABSPATH')) {
    exit;
}

class UP_UserSocial
{

    /**
     * @var UP_User|null
     */
    protected $user = null;

    /**
     * UP_UserSocial constructor.
     * @param UP_User $user
     */
    public function __construct(UP_User $user)
    {
        $this->user = $user;
    }

    /**
     * Get User Followers ID's
     *
     * @since 4.9.31
     * @return mixed
     */
    public function getUserFollowers()
    {
        return $this->user->getUserMeta('_userpro_followers_ids');
    }

    /**
     * Get User Following ID's
     *
     * @since 4.9.31
     * @return mixed
     */
    public function getUserFollowing()
    {
        return $this->user->getUserMeta('_userpro_following_ids');
    }

    /**
     * Get all User Connections
     *
     * @since 4.9.31
     * @return array
     */
    public function getConnections()
    {
        return $this->user->getUserMeta('_userpro_users_request');
    }

    /**
     * Get connections count
     *
     * @since 4.9.31
     * @return array|int
     */
    public function getConnectionsCount()
    {
        $connections = $this->getConnections();
        if (!empty($connections)) {
            $connections = count($connections);
        } else {
            $connections = 0;
        }

        return $connections;
    }

    /**
     * Get User Connections Data
     *
     * @since 4.9.31
     * @return array
     */
    public function getConnectionsPlain()
    {
        $connections = $this->getConnections();

        $details = array();

        foreach ($connections as $key => $value) {
            $details[] = [
                'user_id' => $key,
                'username' => $this->user->getMetaData('nickname', $key),
                'profile_picture' => get_avatar($key)
            ];
        }

        return $details;
    }

    /**
     * Connection button for profile page.
     *
     * @param $user_id
     * @since 4.9.31
     * @return string
     */
    public function getConnectionsHtml($user_id)
    {
        if (!array_key_exists($user_id, $this->getConnections())) {
            $connectionsHtml = '<a class="up-professional-btn up-professional-btn--small up-ajax-btn" href="#" 
                  data-profile-action="connect"><span><i class="fas fa-link"></i><p>' . __('Connect',
                    'userpro') . '</p></span></a>';

            return $connectionsHtml;
        }

        return null;
    }

    /**
     * Get Followers/Following count
     *
     * @param $type
     * @since 4.9.31
     * @return int
     */
    public function getUserFollowersCount($type)
    {
        switch ($type) {

            case 'followers':
                $followers = $this->getUserFollowers();

                break;

            case 'following':
                $followers = $this->getUserFollowing();

                break;
        }

        if (empty($followers)) {
            $followers = 0;
        } else {
            $followers = count($followers);
        }

        return $followers;
    }

    /**
     * Get Follow/Unfollow html template.
     *
     * @param $user_id
     * @since 4.9.31
     * @return string
     */
    public function getFollowActionHtml($user_id)
    {
        if (array_key_exists($user_id, $this->getUserFollowers())) {
            $followText = __('Unfollow', 'userpro');
            $followAction = 'unfollow';
            $icon = 'fas fa-user-minus';
        } else {
            $followText = __('Follow', 'userpro');
            $followAction = 'follow';
            $icon = 'fas fa-user-plus';
        }

        $followHtml = '<a class="up-professional-btn up-professional-btn--small up-ajax-btn" href="#" data-profile-action="'
            . $followAction . '"><span><i class="' . $icon . '"></i><p>' . $followText . '</p></span></a>';

        return $followHtml;
    }

    /**
     * Get Plain data for ajax follow.
     *
     * @param $user_id
     * @since 4.9.31
     * @return array
     */
    public function getFollowActionPlain($user_id)
    {
        if (array_key_exists($user_id, $this->getUserFollowers())) {
            $followPlain['text'] = __('Unfollow', 'userpro');
            $followPlain['action'] = 'unfollow';
            $followPlain['icon'] = 'fas fa-user-minus';
        } else {
            $followPlain['text'] = __('Follow', 'userpro');
            $followPlain['action'] = 'follow';
            $followPlain['icon'] = 'fas fa-user-plus';
        }

        return $followPlain;
    }
}