<?php 
	$animate = $_REQUEST['animate'];
	if (!$animate) $animate = "true";
	$documentTitle = "Artpapers Multiple";
	echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"; 
?>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
	<title><?php echo $documentTitle; ?></title>
	<meta http-equiv="Content-Type" content="text/xhtml; charset=utf-8" />
	<meta http-equiv="Title" content="<?php echo $documentTitle; ?>" />		
	<meta name="viewport" content="width=400">
	<link rel="stylesheet" type="text/css" media="all" href="GLOBAL/global.css" />
	<script type="text/javascript" src="JS/animateEmoticon.js"></script>
	<script type="text/javascript" src="JS/animateEmoticon-src.js"></script>
</head>

<body>







