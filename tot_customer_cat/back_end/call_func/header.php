<?php 
    session_start();
    ob_start();
	// session_destroy();
	require_once("../func/controller.php");
	require_once("../func/connection.php");
	if(getenv('DEV')=="production"){
        $db=new controller(getenv('MYSQL_HOST'),getenv('MYSQL_USER'),getenv('MYSQL_ROOT_PASSWORD'),getenv('MYSQL_DATABASE'),getenv('MYSQL_PORT'));
    }else{
        $db=new controller($host,$user,$pass,$db,$post);
    }
    error_reporting(0);
?>