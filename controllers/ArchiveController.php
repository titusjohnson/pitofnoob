<?php
class ArchiveController {
	function get() {
		global $tpl;

		try {
			$posts = fRecordSet::build(
				"post",
				array("active=" => 1),
				array("date_authored" => "desc")
			);
			if($posts->count() === 0) {
				throw new fNoRowsException("No posts found, sorry!");
			}
			$tpl->set("posts", $posts);
		}
		catch(fNoRowsException $e) {}

		$tpl->set("page_content", "archive.tpl");
	}
}