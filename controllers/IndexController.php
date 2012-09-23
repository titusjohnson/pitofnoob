<?php
class IndexController {
	function get() {
		global $tpl;

		try {
			$post = Post::Latest(1);
			$tpl->set("post", $post);
		}
		catch(fNoRowsException $e) {
			fMessaging::create("error", "No post ready, sorry!");
		}

		$tpl->set("page_content", "index.tpl");
	}
}