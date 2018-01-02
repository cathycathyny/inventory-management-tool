<?php

$name = $_POST["username"];
$password = $_POST["password"];

if(strcmp($name,"execuser") == 0 && strcmp($password,"Welcome1")== 0)
{
	echo "ok";

}
else
{
	echo "no";
}
?>