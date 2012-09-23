<? $post = $this->get("post"); ?>

<h1><?=$post->prepareTitle()?></h1>
<p><?=$post->prepareDateAuthored("m/d/j h:m")?> by <?=$post->prepareAuthor()?></p>
<p><?=Markdown($post->prepareBody())?></p>
<?if(admin()):?>
	<p><a href="<?=ToroLink::path("PostEditController", $post->getId())?>">Edit</a></p>
<?endif;?>