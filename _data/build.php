<?php

// This is a PHP script to manage the build process on the CMCI server.
// Github actions will build the Jeckyll site and post it to a specific branch.
// This script's job is to pull the latest code, and move the files into the 
// right position.

try {

    // Presume we are already in to repo directory.

    // current directory
    echo getcwd() . "\n";

    // move into the repo directory
    system('cd /var/www/html/cmci.colorado.edu/idlab/repo/');

    // Backup existing website
    system('rsync -av --progress ../ backup/ --exclude repo');

    // Clone github repo
    // This will probably always fail because the repo is already there.
    system('git clone --branch gh-pages https://github.com/cu-idlab/lab-www.git');

    // Change into the directory and update
    chdir('lab-www');
    system('git pull');

    // Copy the build files into the home directory
    system('cp -Rf ./* ../../');

} catch (exception $e) {
    var_dump($e);
}

echo "In theory, you're done.";


?>
