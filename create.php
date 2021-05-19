<?php

require_once '../config/connect.php';

$title = $_POST['title'];
$second_name = $_POST['second_name'];
$last_name = $_POST['last_name'];
$phone = $_POST['phone'];
$adres = $_POST['adres'];
$number_scheta = $_POST['number_scheta'];
$id_number = $_POST['id_number'];
$iin = $_POST['iin'];
$number_contract = $_POST['number_contract'];


mysqli_query($connect, "INSERT INTO `clients` (`id`, `Name`, `Second_name`, `Last_name`, `Phone`, `Adres`, `Number_scheta`, `Id_number`, `IIN`, `Number_contract`) VALUES (NULL, '$title', '$second_name', '$last_name', '$phone', '$adres', '$number_scheta', '$id_number', '$iin', '$number_contract')");

header('Location: /');