<?php
/**
 * Just a shortcut method for in templates
 * @return bool
 */
function admin() {
	return fAuthorization::checkAuthLevel("admin");
}