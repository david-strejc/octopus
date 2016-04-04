<?php
/**
* @package		EasyBlog
* @copyright	Copyright (C) 2010 - 2014 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* EasyBlog is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');
?>
<div itemprop="blogPosts" itemscope itemtype="http://schema.org/BlogPosting" class="eb-post fd-cf" data-blog-posts-item data-id="<?php echo $blog->id;?>">

	<?php if (($this->config->get('layout_avatar') && $blog->category->getParam('listing_show_author_avatar', true)) || $blog->category->getParam('listing_show_type', true) || $blog->isFeatured) { ?>
	<div class="eb-post-side <?php if (!($this->config->get('layout_avatar')) && !($blog->category->getParam('listing_show_author_avatar', true)) ) { echo " no-avatar"; } ?>">
		<?php if ($this->config->get('layout_avatar') && $blog->category->getParam('listing_show_author_avatar', true)){ ?>
			<?php if (isset($blog->team_id) && $this->config->get('layout_teamavatar')) { ?>
			<div class="eb-post-author-avatar team">
				<a href="<?php echo $blog->team->getPermalink(); ?>">
					<img src="<?php echo $blog->team->getAvatar();?>" width="30" height="30" class="img-circle" />
				</a>
			</div>
			<?php } ?>

			<div class="eb-post-author-avatar single">
				<a href="<?php echo $blog->author->getProfileLink(); ?>">
					<img src="<?php echo $blog->author->getAvatar();?>" width="30" height="30" class="img-circle" />
				</a>
			</div>
		<?php } ?>

		<?php if ($blog->category->getParam('listing_show_type', true)) { ?>
		<div class="eb-post-type">
			<?php if ($blog->source == 'video') { ?>
			<i class="eb-post-type fa fa-film" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_VIDEO');?>" data-placement="bottom"></i>
			<?php } ?>

			<?php if ($blog->source == 'photo') { ?>
			<i class="eb-post-type fa fa-camera" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_PHOTO');?>" data-placement="bottom"></i>
			<?php } ?>

			<?php if ($blog->source == 'quote') { ?>
			<i class="eb-post-type fa fa-quote-left" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_QUOTE');?>" data-placement="bottom"></i>
			<?php }?>

			<?php if ($blog->source == 'link') { ?>
			<i class="eb-post-type fa fa-link" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_LINK');?>" data-placement="bottom"></i>
			<?php } ?>

			<?php if ($blog->source == 'email') { ?>
			<i class="eb-post-type fa fa-mail-o" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_EMAIL');?>" data-placement="bottom"></i>
			<?php } ?>

			<?php if ($blog->source == 'standard') { ?>
			<i class="eb-post-type fa fa-align-left" data-eb-provide="tooltip" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_TYPE_STANDARD');?>" data-placement="bottom"></i>
			<?php } ?>
		</div>
		<?php } ?>

		<?php if ($blog->isFeatured) { ?>
		<div class="eb-post-featured">
			<i class="fa fa-star" data-original-title="<?php echo JText::_('COM_EASYBLOG_POST_IS_FEATURED');?>" data-placement="bottom" data-eb-provide="tooltip"></i>
		</div>
		<?php } ?>
	</div>
	<?php }?>

	<div class="eb-post-content">

		<div class="eb-post-head">
			<?php echo $this->output('site/blogs/admin/tools', array('blog' => $blog, 'return' => EB::_('index.php?option=com_easyblog'))); ?>

			<?php if ($blog->category->getParam('listing_show_title', true)) { ?>
			<h2 itemprop="name headline" class="eb-post-title reset-heading">
				<a href="<?php echo $blog->getPermalink();?>"><?php echo $blog->title;?></a>
			</h2>
			<?php } ?>

			<?php if ($blog->category->getParam('listing_show_date', true) || $blog->category->getParam('listing_show_author_name', true) || $blog->category->getParam('listing_show_category', true)) { ?>
			<div class="eb-post-meta text-muted">
				<?php if ($blog->category->getParam('listing_show_date', true)) { ?>
				<div class="eb-post-date">
					<i class="fa fa-clock-o"></i>
					<time class="eb-meta-date" itemprop="datePublished" content="<?php echo $blog->getDisplayDate($blog->category->getParam('listing_date_source', 'created'))->format(JText::_('DATE_FORMAT_LC4'));?>">
						<?php echo $blog->getDisplayDate($blog->category->getParam('listing_date_source', 'created'))->format(JText::_('DATE_FORMAT_LC1')); ?>
					</time>
				</div>
				<?php } ?>

				<?php if ($blog->category->getParam('listing_show_author_name', true)) { ?>
				<div class="eb-post-author" itemprop="author" itemscope="" itemtype="http://schema.org/Person">
					<i class="fa fa-pencil"></i>
					<span itemprop="name">
						<a href="<?php echo $blog->author->getProfileLink();?>" itemprop="url" rel="author"><?php echo $blog->author->getName();?></a>
					</span>
				</div>
				<?php } ?>

				<?php if ($blog->category->getParam('listing_show_category', true)) { ?>

					<div class="eb-post-category eb-comma">
						<i class="fa fa-folder-open"></i>
						<span>
							<?php foreach ($blog->categories as $category) { ?>
							<a href="<?php echo $category->getPermalink();?>"  data-eb-provide="tooltip" data-original-title="<?php echo JText::sprintf('COM_EASYBLOG_POST_POSTED_IN', $category->getTitle());?>" data-placement="bottom"><?php echo $category->getTitle();?></a>
							<?php } ?>
						</span>
					</div>

				<?php } ?>
			</div>
			<?php } ?>
		</div>

		<?php if ($blog->getImage() && $blog->category->getParam('listing_show_blogimage', true)) { ?>
		<div class="eb-post-image">
			<img itemprop="image" src="<?php echo $blog->getImage()->getSource('frontpage');?>" width="100%" height="auto" />
		</div>
		<?php } ?>

		<div class="eb-post-body">
			<?php foreach ($blog->videos as $video) { ?>
				<?php echo $video->html;?>
			<?php } ?>
		</div>

		<?php if ($blog->category->getParam('listing_show_tags', true)) { ?>
			<?php echo $this->output('site/blogs/tags/item', array('tags' => $blog->tags)); ?>
		<?php } ?>

		<?php if ($this->config->get('main_ratings_frontpage') && $blog->category->getParam('listing_show_ratings', true)) { ?>
			<?php echo $this->output('site/ratings/frontpage', array('blog' => $blog)); ?>
		<?php } ?>

		<?php if ($blog->category->getParam('listing_show_social', true)) { ?>
			<?php echo EB::showSocialButton($blog, true); ?>
		<?php } ?>

		<div class="eb-post-foot text-muted">
			<?php if ($blog->readmore && $blog->category->getParam('listing_show_readmore', true)) { ?>
			<div class="eb-post-more">
				<a class="btn btn-default btn-sm" href="<?php echo EB::_('index.php?option=com_easyblog&view=entry&id=' . $blog->id);?>">
					<?php echo JText::_('COM_EASYBLOG_CONTINUE_READING');?>
				</a>
			</div>
			<?php } ?>

			<?php if ($blog->category->getParam('listing_show_hits', true)) { ?>
			<div class="eb-post-hits">
				<i class="fa fa-eye"></i> <?php echo JText::sprintf('COM_EASYBLOG_POST_HITS', $blog->hits);?>
			</div>
			<?php } ?>

			<?php if ($this->config->get('main_comment') && $blog->category->getParam('listing_show_comments', true) && $blog->allowcomment) { ?>
			<div class="eb-post-comments">
				<i class="fa fa-comments"></i>
				<a href="<?php echo $blog->getPermalink();?>"><?php echo $this->getNouns('COM_EASYBLOG_COMMENT_COUNT', $blog->totalComments, true); ?></a>
			</div>
			<?php } ?>
		</div>
	</div>
</div>
