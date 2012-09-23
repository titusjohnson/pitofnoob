<?php
/**
 * Simple authorization. Protect this file with .htpasswd! All this does is
 * validate an anti CSRF token and set an admin flag in the session.
 */
class AdminIndexController {

	function get() {
		global $tpl;
		$tpl->set("page_content", "admin/login.tpl");
	}

	function post() {
		try {
			fRequest::validateCSRFToken(fRequest::get("request_token"));

			fAuthorization::setUserAuthLevel("admin");
			fAuthorization::setUserToken("admin");

			fURL::redirect("/");
		}
		catch(fValidationException $e) {
			fMessaging::create("error", "Try again please! Anti-CSRF token missmatch.");
			fURL::redirect(fAuthorization::getLoginPage());
		}
	}

}
