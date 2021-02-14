-- Create a view named customer_addresses that shows the shipping and billing addresses for each customer.
-- This view should return these columns from the Customers table: customer_id, email_address, last_name and first_name.
-- This view should return these columns from the Addresses table: 
-- bill_line1, bill_line2, bill_city, bill_state, bill_zip, ship_line1, ship_line2, ship_city, ship_state, and ship_zip.

USE my_guitar_shop;
CREATE VIEW customer_addresses AS
    SELECT 
        C.customer_id,
        C.email_address,
        C.last_name,
        C.first_name,
        B.line1 AS bill_line1,
        B.line2 AS bill_line2,
        B.city AS bill_city,
        B.state AS bill_state,
        B.zip_code AS bill_ship,
        S.line1 AS ship_line1,
        S.line2 AS ship_line2,
        S.city AS ship_city,
        S.state AS ship_state,
        S.zip_code AS ship_zip
    FROM
        my_guitar_shop.customers C
            INNER JOIN
        my_guitar_shop.addresses B ON C.billing_address_id = B.address_id
            INNER JOIN
        my_guitar_shop.addresses S ON C.shipping_address_id = S.address_id

;