<?php
require_once '../config/connect.php';

$id = $_POST['id'];
$title = $_POST['title'];
$second_name = $_POST['second_name'];
$last_name = $_POST['last_name'];
$phone = $_POST['phone'];
$adres = $_POST['adres'];
$number_scheta = $_POST['number_scheta'];
$id_number = $_POST['id_number'];
$iin = $_POST['iin'];
$number_contract = $_POST['number_contract'];

mysqli_query($connect, "UPDATE `clients` SET `Name` = '$title', `Second_name` = '$second_name', `Last_name` = '$last_name', `Phone` = '$phone', `Adres` = '$adres', `Number_scheta` = '$number_scheta', `Id_number` = '$id_number', `IIN` = '$iin', `Number_contract` = '$number_contract' WHERE `clients`.`id` = '$id'");

header('Location: /');