<?php

	// write new names to file

$myfile = fopen("_Resources/_Processing/Users-dev.txt", "a") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
$txt = "Jane Doe\n";
fwrite($myfile, $txt);
fclose($myfile);

// currently a problem with zipping a .app
// trying to fix below with glob expander

    // $files = array('_Resources/_Processing/Multi.zip','_Resources/_Processing/Users-dev.txt');
    $files = array('_Resources/_Processing/Users-dev.txt');

    // create new zip object
    $zip = new ZipArchive();

    // create a temp file & open it
    $tmp_file = tempnam('.','');
    $zip->open($tmp_file, ZipArchive::CREATE);

    // loop through each file
    foreach($files as $file){

        // download file
        $download_file = file_get_contents($file);

        // add it to the zip
        $zip->addFromString(basename($file),$download_file);

    }

	// add folder with wildcard

	// $zip->addFile('_Resources/_Processing/Multi.zip');

	// $zip->addGlob("_Resources/_Processing/Multi.zip");

	// if (!$zipArchive->status == ZIPARCHIVE::ER_OK) echo "Failed to write files to zip\n";
 

   // close zip
    $zip->close();

    // send the file to the browser as a download
    header('Content-type: application/zip');
    header('Content-disposition: attachment; filename=M.zip');
    header('Content-Length: ' . filesize($zipname));
    readfile($tmp_file);

?>
