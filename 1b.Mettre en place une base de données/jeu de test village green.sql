INSERT INTO
    `employee` (
        `employee_id`,
        `employee_username`,
        `employee_lastname`,
        `employee_firstname`,
        `employee_phone`,
        `employee_address`,
        `employee_status`
    )
VALUES
    (
        NULL,
        'salut3',
        '2',
        '3',
        '0645684865',
        '70 Rue Bonséjour',
        'salesperson'
    );

INSERT INTO
    `employee` (
        `employee_id`,
        `employee_username`,
        `employee_lastname`,
        `employee_firstname`,
        `employee_phone`,
        `employee_address`,
        `employee_status`
    )
VALUES
    (
        NULL,
        'salut2',
        '2',
        '3',
        '0687459523',
        '71 Rue Bonséjour',
        'salesperson'
    );

INSERT INTO
    `employee` (
        `employee_id`,
        `employee_username`,
        `employee_lastname`,
        `employee_firstname`,
        `employee_phone`,
        `employee_address`,
        `employee_status`
    )
VALUES
    (
        NULL,
        'salut1',
        '2',
        '3',
        '0754894512',
        '72 Rue Bonséjour',
        'salesperson'
    );

INSERT INTO
    `customer` (
        `customer_id`,
        `customer_email`,
        `customer_username`,
        `customer_registerdate`,
        `customer_lastname`,
        `customer_firstname`,
        `customer_country`,
        `customer_address`,
        `customer_zipcode`,
        `customer_city`,
        `customer_phone`,
        `client_isCompany`,
        `employee_id`
    )
VALUES
    (
        NULL,
        'xptitmaki@gmail.com',
        'xptitmaki',
        curdate(),
        'Guérin',
        'Gaulthier',
        'France',
        '71 rue Octave Tierce',
        '80000',
        'Amiens',
        '0667315675',
        '1',
        '3'
    );

INSERT INTO
    `customer` (
        `customer_id`,
        `customer_email`,
        `customer_username`,
        `customer_registerdate`,
        `customer_lastname`,
        `customer_firstname`,
        `customer_country`,
        `customer_address`,
        `customer_zipcode`,
        `customer_city`,
        `customer_phone`,
        `client_isCompany`,
        `employee_id`
    )
VALUES
    (
        NULL,
        'salut@gmail.com',
        'salut',
        curdate(),
        'Guérin',
        'Gaulthier',
        'France',
        '70 rue Octave Tierce',
        '80000',
        'Amiens',
        '0760564589',
        '0',
        NULL
    );

INSERT INTO
    `customer` (
        `customer_id`,
        `customer_email`,
        `customer_username`,
        `customer_registerdate`,
        `customer_lastname`,
        `customer_firstname`,
        `customer_country`,
        `customer_address`,
        `customer_zipcode`,
        `customer_city`,
        `customer_phone`,
        `client_isCompany`,
        `employee_id`
    )
VALUES
    (
        NULL,
        'salut1@gmail.com',
        'salut1',
        curdate(),
        'Guérin',
        'Gaulthier',
        'France',
        '72 rue Octave Tierce',
        '80000',
        'Amiens',
        '0665985623',
        '0',
        NULL
    );

INSERT INTO
    `address` (
        `address_id`,
        `address_lastname`,
        `address_firstname`,
        `address_phone`,
        `adress_address`,
        `address_zipcode`,
        `address_city`,
        `customer_id`
    )
VALUES
    (
        NULL,
        'Guérin',
        'Gaulthier',
        '0667315675',
        '71 rue Octave Tierce Bâtiment A Appartement 12 ',
        '80000',
        'Amiens',
        '1'
    );

INSERT INTO
    `address` (
        `address_id`,
        `address_lastname`,
        `address_firstname`,
        `address_phone`,
        `adress_address`,
        `address_zipcode`,
        `address_city`,
        `customer_id`
    )
VALUES
    (
        NULL,
        'Guérin',
        'Olivier',
        '0645897562',
        '70 rue Octave Tierce ',
        '80000',
        'Amiens',
        '2'
    );

INSERT INTO
    `address` (
        `address_id`,
        `address_lastname`,
        `address_firstname`,
        `address_phone`,
        `adress_address`,
        `address_zipcode`,
        `address_city`,
        `customer_id`
    )
VALUES
    (
        NULL,
        'Roussel',
        'Delphine',
        '0765459856',
        '72 Rue Octave Tierce',
        '80000',
        'Amiens',
        '3'
    );

INSERT INTO
    `category` (`category_id`, `category_name`, `category_desc`)
VALUES
    (
        NULL,
        'Pianos',
        'Ensemble d''instruments à touches, pianos, claviers midi, synthétiseurs'
    );

INSERT INTO
    `category` (`category_id`, `category_name`, `category_desc`)
VALUES
    (
        NULL,
        'Guitare',
        'Ensemble d''instruments à cordes grattées, guitares acoustiques, basses, électriques, ukulélés'
    );

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (
        NULL,
        'Pianos classiques',
        'Ensemble de pianos classiques',
        '1'
    );

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (
        NULL,
        'Claviers midi',
        'Ensemble de claviers midi',
        '1'
    );

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (
        NULL,
        'Synthétiseurs',
        'Ensemble de synthétiseurs',
        '1'
    );

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (NULL, 'Guitare', 'Ensemble de guitares', '2');

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (
        NULL,
        'Basses',
        'Ensemble de guitares basses',
        '2'
    );

INSERT INTO
    `subcategory` (
        `subcategory_id`,
        `subcategory_name`,
        `subcategory_desc`,
        `category_id`
    )
VALUES
    (NULL, 'Ukulélés', 'Ensemble de ukulélés', '2');

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Guitare Electrique',
        'Guitare ayant besoin d''un ampli ',
        '1',
        'aze',
        '150',
        '499.99',
        'Ibanez',
        '2'
    );

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Guitare Basse',
        'Guitare basse ayant besoin d''un ampli',
        '1',
        'aze',
        '150',
        '499.99',
        'Ibanez',
        '5'
    );

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Ukulélé',
        'Petite guitare à quatre cordes',
        '1',
        'aze',
        '150',
        '499.99',
        'Ibanez',
        '6'
    );

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Piano classique',
        'Piano classique doté de 88 touches',
        '1',
        'aze',
        '150',
        '2500.99',
        'Yamaha',
        '1'
    );

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Clavier midi',
        'Clavier branchable à une carte son pour faire de la MAO',
        '1',
        'aze',
        '150',
        '650.99',
        'Yamaha',
        '2'
    );

INSERT INTO
    `product` (
        `product_id`,
        `product_name`,
        `product_desc`,
        `product_isAvailable`,
        `product_photo`,
        `product_qty`,
        `product_price`,
        `product_brand`,
        `subcategory_id`
    )
VALUES
    (
        NULL,
        'Synthétiseur',
        'Clavier de 88 touches doté d''une banque de sons',
        '1',
        'aze',
        '150',
        '800.99',
        'Yamaha',
        '3'
    );

INSERT INTO
    `creditcard` (
        `creditcard_id`,
        `creditcard_issuer`,
        `creditcard_number`,
        `creditcard_expirationmonth`,
        `creditcard_expirationyear`,
        `customer_id`
    )
VALUES
    (
        NULL,
        'Orange Bank',
        '5341567898741452',
        '09',
        '25',
        '1'
    );

INSERT INTO
    `creditcard` (
        `creditcard_id`,
        `creditcard_issuer`,
        `creditcard_number`,
        `creditcard_expirationmonth`,
        `creditcard_expirationyear`,

        `customer_id`
    )
VALUES
    (
        NULL,
        'Crédit Agricole',
        '1234567898765432',
        '09',
        '25',
        '2'
    );

INSERT INTO
    `creditcard` (
        `creditcard_id`,
        `creditcard_issuer`,
        `creditcard_number`,
        `creditcard_expirationmonth`,
        `creditcard_expirationyear`,
        `customer_id`
    )
VALUES
    (
        NULL,
        'Société Générale',
        '9876543212345678',
        '09',
        '25',
        '3'
    );

INSERT INTO
    `invoice` (
        `invoice_id`,
        `payment_type`,
        `payment_done`,
        `invoice_date`,
        `invoice_totalPrice`
    )
VALUES
    (
        NULL,
        'carte bancaire',
        '1',
        '2023-11-10',
        '599.99'
    );

INSERT INTO
    `invoice` (
        `invoice_id`,
        `payment_type`,
        `payment_done`,
        `invoice_date`,
        `invoice_totalPrice`
    )
VALUES
    (NULL, 'virement', '0', '2023-11-10', '3000.99');

INSERT INTO
    `invoice` (
        `invoice_id`,
        `payment_type`,
        `payment_done`,
        `invoice_date`,
        `invoice_totalPrice`
    )
VALUES
    (NULL, 'virement', '1', '2023-11-10', '1562.38');

INSERT INTO
    `customerOrder` (
        `customerOrder_id`,
        `customerOrder_date`,
        `customerOrder_status`,
        `customerOrder_totalHT`,
        `customer_id`,
        `address_id`,
        `invoice_id`
    )
VALUES
    (
        NULL,
        '2023-11-10 10:40:58.000000',
        'Payé',
        '499.99',
        '1',
        '1',
        '1'
    );

INSERT INTO
    `customerOrder` (
        `customerOrder_id`,
        `customerOrder_date`,
        `customerOrder_status`,
        `customerOrder_totalHT`,
        `customer_id`,
        `address_id`,
        `invoice_id`
    )
VALUES
    (
        NULL,
        '2023-11-10 10:40:58.000000',
        'Non payé',
        '2500.99',
        '2',
        '2',
        '2'
    );

INSERT INTO
    `customerOrder` (
        `customerOrder_id`,
        `customerOrder_date`,
        `customerOrder_status`,
        `customerOrder_totalHT`,
        `customer_id`,
        `address_id`,
        `invoice_id`
    )
VALUES
    (
        NULL,
        '2023-11-10 10:40:58.000000',
        'Payé',
        '1301.98',
        '3',
        '3',
        '3'
    );

INSERT INTO
    `orderdetails` (
        `orderdetails_id`,
        `orderdetails_qty`,
        `orderdetails_unitprice`,
        `product_id`,
        `customerOrder_id`
    )
VALUES
    (NULL, '1', '599.99', '1', '1');

INSERT INTO
    `orderdetails` (
        `orderdetails_id`,
        `orderdetails_qty`,
        `orderdetails_unitprice`,
        `product_id`,
        `customerOrder_id`
    )
VALUES
    (NULL, '2', '3000.99', '4', '2');

INSERT INTO
    `orderdetails` (
        `orderdetails_id`,
        `orderdetails_qty`,
        `orderdetails_unitprice`,
        `product_id`,
        `customerOrder_id`
    )
VALUES
    (NULL, '2', '1562.38', '5', '3');

INSERT INTO
    `shipping` (
        `shipping_id`,
        `shipping_date`,
        `delivery_company`,
        `customerOrder_id`
    )
VALUES
    (NULL, '2023-11-11', 'UPS', '1');

INSERT INTO
    `shipping` (
        `shipping_id`,
        `shipping_date`,
        `delivery_company`,
        `customerOrder_id`
    )
VALUES
    (NULL, NULL, NULL, '2');

INSERT INTO
    `shipping` (
        `shipping_id`,
        `shipping_date`,
        `delivery_company`,
        `customerOrder_id`
    )
VALUES
    (NULL, '2023-11-12', 'DPD', '3');

INSERT INTO
    `isShipped` (`product_id`, `shipping_id`, `qty_delivered`)
VALUES
    ('1', '1', '1');

INSERT INTO
    `isShipped` (`product_id`, `shipping_id`, `qty_delivered`)
VALUES
    ('5', '3', '1');