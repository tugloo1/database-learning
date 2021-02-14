

ALTER table my_guitar_shop.products

ADD product_price DECIMAL(5, 2) default 9.99,
ADD product_added_time DATETIME default NULL after product_price
;