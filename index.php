<?php
include(dirname(__FILE__)."/bootstrap.php");

Toro::serve(array(
	"/" => "IndexController",
	"/posts/:alpha" => "AllPosts",
));

// Final act is to place the final template
$tpl->place("main", "php");