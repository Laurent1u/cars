<?php
$carsArray = array(
    array(
        'brand' => 'volvo',
        'model' => 's80',
        'seats' => 5,
        'color' => 'Grey',
        'year' => '2002',
        'country' => 'Sweden'
    ),
    array(
        'brand' => 'audi',
        'model' => 'TT',
        'seats' => 2,
        'color' => 'Red',
        'year' => '2007',
        'country' => 'Germany'
    ),
    array(
        'brand' => 'volkswagen',
        'model' => 'golf mk2',
        'seats' => 4,
        'color' => 'blue',
        'year' => '2004',
        'country' => 'Germany'
    ),
    array(
        'brand' => 'ford',
        'model' => 'focus',
        'seats' => 5,
        'color' => 'white',
        'year' => '2015',
        'country' => 'USA'
    ),
    array(
        'brand' => 'bmw',
        'model' => '320d',
        'seats' => 5,
        'color' => 'Grey',
        'year' => '2010',
        'country' => 'Germany'
    ),
    array(
        'brand' => 'renault',
        'model' => 'megane',
        'seats' => 5,
        'color' => 'blue',
        'year' => '2009',
        'country' => 'France'
    )
);

if (isset($_POST['add'])) {
    unset($_POST['add']);
    array_push($carsArray, $_POST);
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cars</title>
</head>
<body style="height: 100vh;display: flex; justify-content: center; align-items: center;">
    <table border="1">
        <tr>
            <th colspan="6">Cars</th>
        </tr>
        <tr>
            <th>Brand</th>
            <th>Model</th>
            <th>Seats</th>
            <th>Color</th>
            <th>Year</th>
            <th>Brand Country</th>
        </tr>
        <?php foreach ($carsArray as $car) { ?>
            <tr>
                <td><?php echo $car['brand']; ?></td>
                <td><?php echo $car['model']; ?></td>
                <td><?php echo $car['seats']; ?></td>
                <td><?php echo $car['color']; ?></td>
                <td><?php echo $car['year']; ?></td>
                <td><?php echo $car['country']; ?></td>
            </tr>
        <?php } ?>
    </table>
    <form action="" method="post" name="form_data">
        <div>
            <label for="brand">Brand</label>
            <input type="text" name="brand" id="brand">
        </div>

        <div class="">
            <label for="model">Model</label>
            <input type="text" name="model" id="model">
        </div>

        <div class="">
            <label for="seats">Seats</label>
            <input type="text" name="seats" id="seats">
        </div>

        <div>
            <label for="color">Color</label>
            <input type="text" name="color" id="color">
        </div>

        <div>
            <label for="year">Year</label>
            <input type="text" name="year" id="year">
        </div>

        <div>
            <label for="country">Brand Country</label>
            <input type="text" name="country" id="country">
        </div>

        <div>
            <button type="submit" name="add">Salveaza</button>
        </div>
    </form>
</body>
</html>