<?php
/**
 * Root template file. page_content is set in every page method
 * and should relate directly to a folder/file based on the URL.
 */
$this->place("header", "php");
$this->place("page_content", "php");
$this->place("footer", "php");