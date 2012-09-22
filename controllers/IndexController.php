<?php
class IndexController {
	function get() {
		global $tpl;

		$tpl->set("page_content", "index.tpl");
	}
}