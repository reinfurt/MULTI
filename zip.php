<?php

	// plan 

	// one .php file which either serves up a form or 
	// processes that form by writing to a txt file, zipping, etc

	// 0. add form to collect name and email


	// 1. write Users.txt

	$myfile = fopen("_Resources/_Processing/Users-dev.txt", "a") or die("Unable to open file!");
	$txt = "John Doe <john.doe@doe.com>\n";
	fwrite($myfile, $txt);
	fclose($myfile);


	// 2. zip	

	// add files to an existing Multi.zip

    	$files = array('_Resources/_Processing/Users-dev.txt');
    

// method 1

// works from the command line, but not in browser
// maybe a path issue? or perhaps permissions
// might work on pair.com
// very likely either <docroot> issue or permissions issue

$zip = new ZipArchive;

if ($zip->open('./_Resources/_Processing/Multi-dev.zip') === TRUE) {
    $zip->addFile('/Library/WebServer/Documents/MULTI/_Resources/_Processing/Users-dev.txt', 'Users-dev.txt');
    $zip->close();
    echo 'ok';
} else {
    echo 'failed';
}


	// method 2

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
