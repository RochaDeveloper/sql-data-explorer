SELECT order_id AS audit_ticket, mxn_price

FROM raw_tech_sales

WHERE product_category IN ('Mobile Devices', 'Peripherals')

AND mxn_price BETWEEN 1500 AND 8500

AND customer_notes LIKE '%defective%'

AND refund_status <> 'Processed'

AND assigned_support_agent IS NULL

ORDER BY mxn_price DESC

LIMIT 10 OFFSET 25 