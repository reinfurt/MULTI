<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
        <title>Multi</title>
        <meta http-equiv="Content-Type" content="text/xhtml; charset=utf-8" />
        <meta http-equiv="Title" content="Multi" />

	<!-- <meta name="viewport" content="user-scalable=no, width=200" /> -->

	<!-- <meta name="viewport" content="width=400, initial-scale=10.0" /> -->

	<!-- <meta name=viewport content="width=device-width, initial-scale=10.0"> -->

	<meta name = "viewport" content = "user-scalable=no, width=device-width">

        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link rel="apple-touch-icon" href="_Resources/apple-touch-icon.png" />
        <!-- <script src="_Processing/processing.min.js"></script> -->
        <script src="_Processing/processing-1.3.6.js"></script>
        <script src="_Resources/minim.js"></script>

	<script>
		function BlockMove(event) {
  
			event.preventDefault();
		}
	</script>

	<style type="text/css">
	<!—-
    		* {
        		-webkit-touch-callout: none;
	        	/* -webkit-user-select: none; */
    			}

/*
// this is for mobile from Modern Art
/* Mobile Styles */
@media screen and (max-width: 568px) {
}
*/
	-->
	</style>
</head>

<body style="background-color:#CCC; margin:0px;" ontouchmove="BlockMove(event);">

	<div id='Multi'></div>

	<script>

		temp = document.getElementById('Multi');
	
 		if (window.navigator.standalone) {

			// fill in correct css to center message and show icon

			// temp.innerHTML = '<canvas datasrc="_Processing/Multi.pde"></canvas>';	
			temp.innerHTML = '<div style="font-family: Helvetica, sans-serif; font-size: 14px; width: 688px; padding:40px; background-color:#FFF;">Click below to install Multi, choose Add to home screen ...</div>';

		} else {

			temp.innerHTML = '<canvas datasrc="_Processing/Multi.pde"></canvas>';
		}

	</script>

</body>
</html>
