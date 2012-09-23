<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

	    <link rel="apple-touch-icon" href="/media/images/apple-touch-icon.png">
	    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/media/images/apple-touch-icon-72x72-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="114x114" href=/media/images/apple-touch-icon-114x114-precomposed.png">
	    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/media/images/apple-touch-icon-144x144-precomposed.png">

        <link rel="stylesheet" href="/media/css/normalize.css">
        <link rel="stylesheet" href="/media/css/font-awesome.css">
	    <!--[if IE 7]>
	      <link rel="stylesheet" href="/media/css/font-awesome-ie7.css">
	    <![endif]-->
	    <link rel="stylesheet" href="/media/css/main.css">
        <script src="/media/js/vendor/modernizr-2.6.1.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

    <?if(admin()):?>
		<ul class="admin-nav">
			<li><a href="<?=ToroLink::path("IndexController")?>">Home Page</a></li>
			<li><a href="<?=ToroLink::path("AllPosts")?>"></a></li>
			<li><a href=""></a></li>
			<li><a href=""></a></li>
		</ul>
    <?endif;?>

	<div class="header">
		<img class="logo" src="/media/images/newb1.gif" alt="You sir, are a newbie!" />
	</div>