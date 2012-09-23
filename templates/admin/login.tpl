<form method="post" action="">
	<fieldset>
		<input type="hidden" name="request_token" value="<?=fRequest::generateCSRFToken();?>" />
		<input type="submit" value="Start administrating justice?" />
	</fieldset>
</form>