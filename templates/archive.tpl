<? $posts = $this->get("posts"); ?>

<?if(count($posts) > 0):?>
	<?foreach($posts as $post):?>
		<div class="post-row">
			<h5><a href="<?=ToroLink::path("PostController", $post->prepareId())?>"><?=$post->prepareTitle()?></a></h5>
			<p><?=$post->prepareDateAuthored("m/d/j h:m")?> by <?=$post->prepareAuthor()?></p>
		</div>
	<?endforeach;?>
<?else:?>
	<p>Sorry! No posts available.</p>
<?endif;;?>