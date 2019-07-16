<?php

use SilverStripe\Admin\ModelAdmin;

class MyAdmin extends ModelAdmin 
{

    private static $managed_models = [
        'Sponsor',
    ];

    private static $url_segment = 'sponsors';

    private static $menu_title = 'Sponsors';
}