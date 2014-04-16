    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>River Run</title>

<link href='http://fonts.googleapis.com/css?family=Alfa+Slab+One' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>
<script src="$ThemeDir/javascripts/application.js" type="text/javascript"></script>
</script>

		<% base_tag %>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		<% require themedCSS(layout) %> 
	</head>
    
<body>

<a name="top"></a>

<div id="background_wrapper">
  <div id="headerNew">
  <div id="wordmark">
  <a target="_blank" href="http://www.uiowa.edu"><span>The University of Iowa</span></a>
  </div>
  <div id="header_wrapper">
 	
    <div id="nav">
      <ul>
        <li><a class="info_nav" href="#race_info">race info</a></li>
        <li><a  class="volunteer_nav" href="#volunteer">volunteer</a></li>
        <li><a  class="story_nav"href="#story">our story</a></li>
        <li><a class="contact_nav" href="#contact">contact us</a></li>
        <li><a class="sponsors_nav" href="#sponsors">sponsors</a></li>
      </ul>
    </div><!-- end nav -->
    <div class="clear"></div>
    </div>
   

  </div><!-- end header -->
  
  
  <div class="section" id="summary">
    <div id="summary_wrapper">
      <h2>River Run is more than a race.</h2>
		<div id="about">
		           $Form
          <p>$SiteConfig.Tagline</p>
            <a  class="summary_button" target="_blank" href="https://www.signmeup.com/site/reg/register.aspx?fid=XV2V3J7">Register Now</a>
            <div id="social_media"> 
            <a target="_blank" href="https://twitter.com/#!/uiriverrun"><img src="$ThemeDir/images/twitter.png"/></a>
            <a target="_blank" href="https://www.facebook.com/pages/RiverRun/338785644635"><img src="$ThemeDir/images/facebook.png"/></a>
            </div>
            </div>
            <div id="photo">
          <img src="$MainImage.URL" />
          </div>
          <div class="clear"></div>
        
    </div><!-- end summary_wrapper -->
  </div><!-- end summary section -->
  
  <div class="separator" id="summary_separate"></div>

  
  <div class="section" id="race_info">
    <h2><img src="$ThemeDir/images/infohead.png"></h2>
    <div id="info_wrapper">
      <div id="race_info_content">
        <div id="when">
         $RaceInfo
          </div><!-- end when -->
      </div><!-- end race_info_content -->
      
      <div id="where">
        <h3>Where</h3>
       <a href="{$ThemeDir}/images/map_large.png" target="_blank"><img src="$ThemeDir/images/map.png" style="margin-bottom:20px;" /></a> <p>*course map is subject to change</p>
       <p><a href="{$ThemeDir}/images/map_large.png" target="_blank">Download a larger version of the map</a></p>

        <p><a class=""  target="_blank" href="http://goo.gl/xvc1xX">Get Directions to the Start/Finish Line</a></p>
        
    
     </div><!-- end where -->
      <div class="clear"></div>
    </div><!-- end info_wrapper (necessary?) -->
    <div class="separator" id="race_info_separate"></div>
  </div><!-- end race info section -->
  

  
  <div class="section" id="volunteer">
 
    <h2><img src="$ThemeDir/images/volunteerhead.png" /></h2>
    <div id="volunteer_wrapper">
      <h3>Want to help out at River Run?<a class="volunteer_wrapper_button" target="_blank" href="https://docs.google.com/forms/d/10jNClLRYKX_Rg44DOK4jCTzdbmbV6u_nx_398FZfDCc/viewform?sid=51f8820834d5f&token=CJL4DT0BAAA.8ppCGBNJmE7y8w7zIEAuyA.lXBhs0R5wORxVuPsDttdcw&pli=1">Sign Up Here</a></h3>
      <div id="volunteering">
       $Volunteer
      </div> <!-- end volunteering -->
      <div id="training">
$Training
      </div><!-- end training -->
      <div class="clear"></div>
      <div id="thanks">
        <h3>Thank you for Volunteering!</h3>
        <img src="$ThemeDir/images/logo.png" />
      </div><!-- end thanks -->
    </div><!-- end volunteer_wrapper -->
  </div><!-- end volunteer section -->

   <div class="separator" id="volunteer_separate"></div>


<div class="section" id="story">
  <h2><img src="$ThemeDir/images/storyhead.png" style="padding-top:60px;"/></h2>
  <div id="story_wrapper">
  <div id="text">
  $Story
  </div>
  <div id="photos">
<img src="$StoryImage1.URL" />
<img src="$StoryImage2.URL" />
  </div>
  <div class="clear"></div>
  </div><!-- end story wrapper -->
</div><!-- end story section -->

<div class="separator" id="contact_separate"></div>

<div class="section" id="contact">
  <div id="contact_wrapper">
    <h2><img src="$ThemeDir/images/contacthead.png" /></h2>
   $Contact
    
    <div class="clear"></div>
  

  </div><!-- end contact_wrapper -->
</div><!-- end contact section -->


<div class="separator" id="sponsors_separate"></div>

<div class="section" id="sponsors">
  	<h2><img src="$ThemeDir/images/sponsorshead.png" /></h2>
  	<div id="sponsors_wrapper">
  	<img src="{$ThemeDir}/images/sponsor-logos.png" style="padding-top:0px;"/> 
    </div>
</div><!-- end sponsors section -->
  
</div><!-- end background wrapper -->

<a href="#" id="back_to_top" onclick="Header.back_to_top(); return false;" style="">Back_to_top</a>

</div>
</body>
</html>