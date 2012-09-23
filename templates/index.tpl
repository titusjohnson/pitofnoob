<? $posts = $this->get("posts"); ?>

<?if(count($posts) > 0):?>
	<?foreach($posts as $post):?>
		<div class="post-row">
			<h5><?=$post->prepareTitle()?></h5>
			<p><?=$post->prepareDateAuthored("m/d/j h:m")?> by <?=$post->prepareAuthor()?></p>
			<p><?=substr($post->prepareBody(), 0, 300);?></p>
		</div>
	<?endforeach;?>
<?else:?>
	<p>Sorry! No posts available.</p>
<?endif;;?>