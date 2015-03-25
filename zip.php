<?php

	// 1. zip	

	// add files to an existing .zip
	// permissions on enclosing folder 777

	$zip = new ZipArchive;
	$zipname = '_Resources/_Processing/Multi.zip';
	$addfilesource = '_Resources/_Processing/Users.txt';
	$addfilename = 'Users.txt';

	if ($zip->open($zipname) === TRUE) {

		$zip->addFile($addfilesource, $addfilename);
		$zip->close();
	} else {
    		die ('Failed.');
	}


	// 2. download
    
	header('Content-type: application/zip');
	header('Content-disposition: attachment; filename=Multi.zip');
	header('Content-Length: ' . filesize($zipname));
	readfile($zipname);
?>
