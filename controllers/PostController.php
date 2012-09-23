<?php
class PostController {
	function get($id) {
		global $tpl;

		try {
			$post = new Post($id);
			$tpl->set("post", $post);
		}
		catch(fNotFoundException $e) {
			ToroHook::fire("404");
		}

		$tpl->set("page_content", "post.tpl");
	}
}