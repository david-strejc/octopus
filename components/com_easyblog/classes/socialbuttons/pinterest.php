<?php
/**
* @package		EasyBlog
* @copyright	Copyright (C) 2010 - 2014 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasySocial is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

require_once(dirname(__FILE__) . '/button.php');

class EasyBlogSocialButtonPinterest extends EasyBlogSocialButton
{
	public $type 	= 'pinterest';

	/**
	 * Outputs the html code for Twitter button
	 *
	 * @since	4.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function html()
	{
		if (!$this->config->get('main_pinit_button')) {
			return;
		}

		if ($this->frontpage && !$this->config->get('social_show_frontpage')) {
			return;
		}

		// Get the pinterest button style from the configuration
		$style 	= $this->config->get('main_pinit_button_style');
		$url 	= EB::_('index.php?option=com_easyblog&view=entry&id=' . $this->blog->id, false, true);

		// Combine the introtext and the content
		$content 	= $this->blog->intro . $this->blog->content;

		// Retrieve image for Pinterest
		$image 	= $this->getImage();

		// Retrieve videos for Pinterest
		$video 	= $this->getVideo();

		// If there's no image or video, skip this altogether because
		// Pinterest requirements requires video or image.
		if (!$image && !$video) {
			return;
		}

		$media = $image;

		if(!$image){
			$media 			= $video;
		}

		$buttonSize 	= 'social-button-';
		switch( $style )
		{
			case 'vertical':
				$buttonSize .= 'large';
			break;
			case 'horizontal':
				$buttonSize .= 'small';
			break;
			default:
				$buttonSize .= 'plain';
			break;
		}

		// @TODO: Configurable maximum length
		$contentLength	= 350;

		$text           = $blog->intro . $blog->content;
		$text           = nl2br($text);
		$text			= strip_tags( $text );
		$text 			= trim( preg_replace( '/\s+/', ' ', $text ) );
		$text			= ( JString::strlen( $text ) > $contentLength ) ? JString::substr( $text, 0, $contentLength) . '...' : $text;

		$theme 			= new CodeThemes();

		$title = $blog->title;

		// Urlencode all the necessary properties.
		$url 			= urlencode( $url );
		$text 			= urlencode( $text );
		$media 			= urlencode( $media );

		$placeholder 	= 'sb-' . rand();

		$output			= '<div class="social-button ' . $buttonSize . ' pinterest"><span id="' . $placeholder . '"></span></div>';
		$output			.= EasyBlogHelper::addScriptDeclarationBookmarklet('$("#' . $placeholder . '").bookmarklet("pinterest", {
					url: "'.$url.'",
					style: "'.$style.'",
					media: "' . $media . '",
					title: "' . $title . '",
					description: "' . $text . '"
				});');

		return $output;
	}

	/**
	 *
	 *
	 * @since	4.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function getImage()
	{
		// Retrieve image that can be used for pinterest
		$image		= '';

		if ($blog->getImage()) {
			$image	= $blog->getImage('frontpage');
		}

		if (empty($image)) {

			// Fetch the first image of the blog post
			$image 		= EB::getFirstImage($content);

			// Test if there's any blog image
			if (isset($blog->images) && $blog->images && is_array($blog->images)) {
				$image 	= $blog->images[0];
			}
		}

		return $image;
	}
	/**
	 * Retrieves video from blog post content
	 *
	 * @since	4.0
	 * @access	public
	 * @param	string
	 * @return
	 */
	public function getVideo()
	{
		// Retrieve video that can be used for pinterest
		$video		= '';
		$videoObj	= EB::videos()->getVideoObjects($content);

		if($videoObj && !empty($videoObj)){
			$video		= $videoObj[0]->video;
		}

		return $video;
	}
}
