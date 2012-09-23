<?php
class Post extends fActiveRecord {
	function configure() {
		// This is a shell class for fActiveRecord access
	}

	static function Latest($limit = 1) {
		return fRecordSet::build(
			"post",
			array("active=" => 1),
			array("date_authored" => "desc"),
			$limit
		);
	}
}