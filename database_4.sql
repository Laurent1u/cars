SELECT c.*, bc.name as country_name FROM
    cars.`cars` c
        INNER JOIN cars.`brand_country` bc ON bc.id = c.`brand_country_id`
WHERE c.`year` > '2010'