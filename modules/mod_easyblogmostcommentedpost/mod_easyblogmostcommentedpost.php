<?php
/*
 * @package		mod_easyblogmostcommentedpost
 * @copyright	Copyright (C) 2010 Stack Ideas Private Limited. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 *
 * EasyBlog is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */
defined('_JEXEC') or die('Restricted access');

$path	= JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'helper.php';

jimport( 'joomla.filesystem.file' );

if( !JFile::exists( $path ) )
{
	return;
}
require_once( $path );
require_once (dirname(__FILE__) . DIRECTORY_SEPARATOR . 'helper.php');
require_once (JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'constants.php');
require_once (JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'modules.php');
require_once (JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'router.php');
require_once (JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'date.php');
require_once (JPATH_ROOT . DIRECTORY_SEPARATOR . 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'tables' . DIRECTORY_SEPARATOR . 'profile.php');

EasyBlogHelper::loadHeaders();
EasyBlogHelper::loadModuleCss();

$config     	= EasyBlogHelper::getConfig();
$posts			= modEasyBlogMostCommentedPostHelper::getMostCommentedPost($params);
$textcount 		= $params->get( 'textcount' , 150 );

require(JModuleHelper::getLayoutPath('mod_easyblogmostcommentedpost'));
