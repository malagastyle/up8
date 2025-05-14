<?php
session_start();

$db_host = 'localhost';
$db_user = 'root';
$db_password = 'root';
$db_name = 'up8';

$db_handler = mysqli_connect($db_host, $db_user, $db_password, $db_name);

if (!$db_handler) {
    die("Ошибка подключения к базе данных: " . mysqli_connect_error());
}

mysqli_set_charset($db_handler, 'utf8mb4');
?>