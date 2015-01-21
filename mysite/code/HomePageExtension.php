<?php

class HomePageExtension extends DataExtension {
	private static $db = array (
		'LeftColumnContent' => 'HTMLText',
		'RightColumnContent' => 'HTMLText'
	);

	public function updateCMSFields(FieldList $fields){
		$fields->renameField('Content', 'Main Content');
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('LeftColumnContent', 'Left column content'), 'Content');
		$fields->addFieldToTab('Root.Main', new HTMLEditorField('RightColumnContent', 'Right column content'), 'Content');
	}



}