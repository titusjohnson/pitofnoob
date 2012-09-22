<?php
include(dirname(__FILE__)."/bootstrap.php");

Toro::serve(array(
	"/" => "IndexController"
));

// Final act is to place the final template
$tpl->place("main", "php");