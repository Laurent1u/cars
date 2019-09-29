<?php

$database = '';
$host = 'mysql:dbname=' . $database . ';host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $db = new PDO($host, $user, $password);

    $sql = "SELECT c.*, bc.name as country_name FROM 
        cars.`cars` c
        INNER JOIN cars.`brand_country` bc ON bc.id = c.`brand_country_id`
        WHERE c.`year` > '2010'";
    $con = $db->prepare($sql);
    $con->execute();
    $results = $con->fetchAll(PDO::FETCH_OBJ);

} catch (Exception $e) {
    print_r($e->getMessage());
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Database Test 5</title>
</head>
<body>
    <table border="1">
        <tr>
            <th colspan="7">Cars</th>
        </tr>
        <tr>
            <th>Id</th>
            <th>Brand</th>
            <th>Model</th>
            <th>Seats</th>
            <th>Color</th>
            <th>Year</th>
            <th>Brand Country</th>
        </tr>
        <?php foreach ($results as $car) { ?>
            <tr>
                <td><?php echo $car->id; ?></td>
                <td><?php echo $car->brand; ?></td>
                <td><?php echo $car->model; ?></td>
                <td><?php echo $car->seats; ?></td>
                <td><?php echo $car->color; ?></td>
                <td><?php echo $car->year; ?></td>
                <td><?php echo $car->country_name; ?></td>
            </tr>
        <?php } ?>
    </table>
</body>
</html>