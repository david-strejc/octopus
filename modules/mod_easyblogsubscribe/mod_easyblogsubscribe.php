<?php
/*
 * @package		EasyBlog
 * @copyright	Copyright (C) 2010 Stack Ideas Private Limited. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 *
 * EasyBlog is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */
// no direct access
defined('_JEXEC') or die('Restricted access');

$path	= JPATH_ROOT . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_easyblog' . DIRECTORY_SEPARATOR . 'helpers' . DIRECTORY_SEPARATOR . 'helper.php';

jimport( 'joomla.filesystem.file' );

if( !JFile::exists( $path ) )
{
	return;
}

require_once( $path );


EasyBlogHelper::loadHeaders();
EasyBlogHelper::loadModuleCss();

require( JModuleHelper::getLayoutPath( 'mod_easyblogsubscribe' ) );
