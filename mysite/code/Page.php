<?php

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\Connect\MySQLSchemaManager;

class Page extends SiteTree {
	private static $db = [];

	private static $has_one = [
		'BackgroundImage' => Image::class,
	];

	private static $create_table_options = [
		MySQLSchemaManager::ID => 'ENGINE=MyISAM',
	];

	public function Sponsors() {
		return Sponsor::get();
	}

	public function getCMSFields() {
		$f = parent::getCMSFields();
		$f->addFieldToTab('Root.Main', new UploadField('BackgroundImage'), 'Content');

		return $f;
	}
}
