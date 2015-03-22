<?php
	// 0. add form to collect name and email


	// 1. write Users.txt

	$myfile = fopen("_Resources/_Processing/Users-dev.txt", "a") or die("Unable to open file!");
	$txt = "John Doe\n";
	fwrite($myfile, $txt);
	$txt = "Jane Doe\n";
	fwrite($myfile, $txt);
	fclose($myfile);


	// 2. zip	

	// add files to an existing Multi.zip


    	$files = array('_Resources/_Processing/Users-dev.txt');
    

// not working, maybe a path issue?
// or perhaps permissions
// alt method (simpler, but still not working)
// just not writing to any zip file, so maybe method below is better
// one of these *will* work however
// should work out how to debug php

// **** works from the command line but not within the browser... **** hmm
// might work on pair.com

$zip = new ZipArchive;

if ($zip->open('./_Resources/_Processing/Multi-dev.zip') === TRUE) {
    $zip->addFile('/Library/WebServer/Documents/MULTI/_Resources/_Processing/Users.txt', 'Users-dev.txt');
    $zip->close();
    echo 'ok';
} else {
    echo 'failed';
}


	/*
	// 2.2 create new zip object

	// $zip = new ZipArchive();

	// 2.3 create a temp file & open it
    
	// $tmp_file = tempnam('.','');

	// open Multl.zip instead
	$tmp_file = "/Library/WebServer/Documents/MULTI/_Resources/_Processing/Multi.zip";
	// echo $tmp_file;

	$res = $zip->open('_Resources/_Processing/Multi.zip');
	// if ($res) echo "Multi.zip opened";

	// $zip->open($tmp_file);
	// $zip->open($tmp_file, ZipArchive::CREATE);
	// $zip->open($tmp_file, ZipArchive::CREATE);

    	foreach($files as $file){

	        $download_file = file_get_contents($file);
	        $zip->addFromString(basename($file),$download_file);
	}

	// add folder with wildcard

	// $zip->addFile('_Resources/_Processing/Multi.zip');
	// $zip->addGlob("_Resources/_Processing/Multi.zip");

	// if (!$zipArchive->status == ZIPARCHIVE::ER_OK) echo "Failed to write files to zip\n";
 
	// close zip
	$zip->close();
    	*/

/*
	// 3. download
    
	header('Content-type: application/zip');
	header('Content-disposition: attachment; filename=M.zip');
	header('Content-Length: ' . filesize($zipname));
	readfile($tmp_file);
*/

?>
