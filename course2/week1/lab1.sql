SELECT
	COUNT(*) AS order_count,
    SUM(tax_amount) AS tax_total,
    AVG(tax_amount) AS tax_average

FROM
	my_guitar_shop.orders;