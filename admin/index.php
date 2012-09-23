<?php
/**
 * Dedicated index for serving up Admin pages.
 * Protect this with .htpasswd, no built-in auth.
 */
include(dirname(__FILE__)."/../bootstrap.php");

Toro::serve(array(
	"/" => "AdminIndexController"
));

// Final act is to place the final template
$tpl->place("main", "php");