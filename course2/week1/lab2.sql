
SELECT 
    my_guitar_shop.categories.category_name,
    COUNT(*) AS product_count,
    MAX(my_guitar_shop.products.list_price) AS most_expensive_product

FROM my_guitar_shop.products
     INNER JOIN my_guitar_shop.categories ON 
        my_guitar_shop.products.category_id = my_guitar_shop.categories.category_id 

GROUP BY my_guitar_shop.categories.category_name
ORDER by most_expensive_product DESC
    
    ;
