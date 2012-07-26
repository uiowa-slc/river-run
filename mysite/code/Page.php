<?php
class Page extends SiteTree {

	public static $db = array(
							  
	"RaceInfo" => "HTMLText",
	"Volunteer" => "HTMLText",
	"Training" => "HTMLText",
	"Story" => "HTMLText",
	"Contact" => "HTMLText"
	
	);

	public static $has_one = array(
								   
	    'MainImage' => 'Image',
		'StoryImage1' => 'Image',
		'StoryImage2' => 'Image',
		'SponsorImage' => 'Image'
	
	);
	
function getCMSFields() {
	$fields = parent::getCMSFields();

	$fields->addFieldToTab('Root.Content.Info', new HTMLEditorField('RaceInfo', 'Race Information'));
	$fields->addFieldToTab('Root.Content.Volunteer', new HTMLEditorField('Volunteer', 'Volunteer'));
	$fields->addFieldToTab('Root.Content.Volunteer', new HTMLEditorField('Training', 'Training'));
	$fields->addFieldToTab('Root.Content.Story', new HTMLEditorField('Story', 'Story'));
	$fields->addFieldToTab('Root.Content.Contact', new HTMLEditorField('Contact', 'Contact'));
	
	$fields->addFieldToTab('Root.Content.Main', new ImageField('MainImage', 'Main Image  497px x 378px (at 72 dpi)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Story', new ImageField('StoryImage1', 'Story Image  1  411px x 305px (at 72 dpi)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Story', new ImageField('StoryImage2', 'Story Image  2  411px x 305px (at 72 dpi)', null, null, null, $this->ClassName));
	$fields->addFieldToTab('Root.Content.Sponsor', new ImageField('SponsorImage', 'Sponsor Image  494px x 627px (at 72 dpi)', null, null, null, $this->ClassName));
	
		return $fields;
	
   }}

class Page_Controller extends ContentController {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	public static $allowed_actions = array (
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
		Requirements::themedCSS('layout'); 
	}
}