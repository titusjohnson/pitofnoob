<? $post = $this->get("post")->getRecord(0); ?>

<div class="post-row">
	<h5><?=$post->prepareTitle()?></h5>
	<p><?=$post->prepareDateAuthored("m/d/j h:m")?> by <?=$post->prepareAuthor()?></p>
	<p><?=Markdown($post->prepareBody());?></p>
	<?if(admin()):?>
		<p><a href="<?=ToroLink::path("PostEditController", $post->getId())?>">Edit</a></p>
	<?endif;?>
</div>