<?php
include(dirname(__FILE__)."/bootstrap.php");

Toro::serve(array(
	"/" => "IndexController",
	"/archive/" => "ArchiveController",
	"/post/:alpha" => "PostController",
	"/post/edit/:alpha" => "PostEditController"
));

// Final act is to place the final template
$tpl->place("main", "php");