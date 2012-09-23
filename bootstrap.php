<?php
include(dirname(__FILE__)."/config.php");
include(dirname(__FILE__)."/libraries/functions.php");
include(dirname(__FILE__)."/libraries/markdown/markdown.php");

/**
 * Initialize Flourish's Template object and set up our basic templates
 */
$tpl = new fTemplating($_SERVER["DOCUMENT_ROOT"]."/templates/");
$tpl->set("header", "header.tpl");
$tpl->set("footer", "footer.tpl");
$tpl->set("main", "main.tpl");
$tpl->buffer();

/**
 * Basic auth levels
 */
fAuthorization::setLoginPage("/admin/");
fAuthorization::setAuthLevels(array("admin" => 100));

/**
 * Set a global database access variable.
 * Attach the database to our ORM.
 */
$db = new fDatabase("mysql", DB_NAME, DB_USER, DB_PASS, DB_HOST);
fORMDatabase::attach($db);


/**
 * Automatically includes classes
 *
 * @throws Exception
 *
 * @param  string $class_name  Name of the class to load
 * @return void
 */
function __autoload($class_name)
{
    // All the different locations we stash classes in that we want to autoload
    $locations = array(
	    '/libraries/loggar/',
	    '/libraries/toro/',
	    '/libraries/flourish/',
	    '/controllers/',
	    '/models/'
    );

	foreach($locations as $loc) {
		$full_path = $_SERVER['DOCUMENT_ROOT'] . $loc . $class_name . ".php";
	    if (file_exists($full_path)) {
			include $full_path;
			return;
		}
	}

    throw new Exception('The class ' . $class_name . ' could not be loaded');
}