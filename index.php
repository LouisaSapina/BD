<?php

require_once 'config/connect.php';
?>




<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Client</title>
</head>
<style>
    th, td {
        padding: 10px;
    }

    th {
        background: #778899;
        color: #000000;
    }

    td {
        background: #b5b5b5;
    }
</style>
<body>

<table>
    <tr>
        <th>id</th>
        <th>Name</th>
        <th>Second_name</th>
        <th>Last_name</th>
        <th>Phone</th>
        <th>Adres</th>
        <th>Number_scheta</th>
        <th>Id_number</th>
        <th>IIN</th>
        <th>Number_contract</th>
    </tr>



<!--    <tr>-->
<!--        <td>1</td>-->
<!--        <td>Ginevra</td>-->
<!--        <td>Molly</td>-->
<!--        <td>Weasley</td>-->
<!--        <td>87473803143</td>-->
<!--        <td>London, Street 5</td>-->
<!--        <td>5169787</td>-->
<!--        <td>546328</td>-->
<!--        <td>02012865125</td>-->
<!--        <td>1</td>-->
<!--    </tr>-->

    <?php
        $clients = mysqli_query($connect, "SELECT * FROM `clients`");
        $clients = mysqli_fetch_all($clients);
        foreach ($clients as $client) {
            ?>

            <tr>
                <td><?= $client[0] ?></td>
                <td><?= $client[1] ?></td>
                <td><?= $client[2] ?></td>
                <td><?= $client[3] ?></td>
                <td><?= $client[4] ?></td>
                <td><?= $client[5] ?></td>
                <td><?= $client[6] ?></td>
                <td><?= $client[7] ?></td>
                <td><?= $client[8] ?></td>
                <td><?= $client[9] ?></td>
                <td><a href="update.php?id=<?= $client[0] ?>">Update</a></td>
                <td><a style="color: red;" href="vendor/delete.php?id=<?= $client[0] ?>">Delete</a></td>

            </tr>

            <?php
        }
    ?>

<!--    <tr>-->
<!--        <td>2</td>-->
<!--        <td>Fred</td>-->
<!--        <td>First</td>-->
<!--        <td>Weasley</td>-->
<!--        <td>874738044</td>-->
<!--        <td>London, Street 5</td>-->
<!--        <td>5169759</td>-->
<!--        <td>54678</td>-->
<!--        <td>02012865889</td>-->
<!--        <td>2</td>-->
<!--    </tr>-->


</table>
<h2>Add new client</h2>
<form action="vendor/create.php" method="post">
    <p>Name</p>
    <input type="text" name="title">
    <p>second_name</p>
    <input type="text" name="second_name">
    <p>last_name</p>
    <input type="text" name="last_name">
    <p>phone</p>
    <input type="text" name="phone">
    <p>adres</p>
    <input type="text" name="adres">
    <p>number_scheta</p>
    <input type="text" name="number_scheta">
    <p>id_number</p>
    <input type="text" name="id_number">
    <p>iin</p>
    <input type="text" name="iin">
    <p>number_contract</p>
    <input type="text" name="number_contract">


    <br> <br>

    <button type="submit">Submit</button>
</form>



<!--<form action="" method="post">-->
<!---->
<!--    <p>Id_zakaz</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Id_client</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Id_tovar</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Id_voditel</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Id_menager</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Kolichestvo_upakovki</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Data Zakaza</p>-->
<!--    <input type="text" name="title">-->
<!--    <p>Data Dostavki</p>-->
<!--    <input type="text" name="title"><br><br>-->
<!--    <button type="submit">New Zakaz</button>-->
<!---->
<!--</form>-->
</body>
</html>