<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
        <title>Multiple</title>
        <meta http-equiv="Content-Type" content="text/xhtml; charset=utf-8" />
        <meta http-equiv="Title" content="Watch Wyoscan" />
        <!-- <meta name="viewport" content="width=200;" /> --> 
	<!-- <meta name="viewport" content="user-scalable=no, width=device-width" /> -->
	<meta name="viewport" content="user-scalable=no, width=200" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link rel="apple-touch-icon" href="_Resources/apple-touch-icon.png" />
<!--    <link rel="apple-touch-icon" href="bookmark-icon.png" /> -->
<!--    <link rel="stylesheet" type="text/css" media="all" href="GLOBAL/global.css" /> -->
<!--    <script type="text/javascript" src="GLOBAL/global.js"></script> -->
        <script src="_Processing/processing-1.4.1.min.js"></script>

<script>
 
function BlockMove(event) {
  
	event.preventDefault() ;
}

</script>

</head>

<body style="background-color:#FFF; margin:0px;" ontouchmove="BlockMove(event);">

	<br />
	<br />
	<br />
        <canvas datasrc='_Processing/Multiple.pde'></canvas>

</body>
</html>
