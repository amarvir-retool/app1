SELECT
  *,
  DATE_PART ('day', deadline - DATE) AS delivery_time
FROM
  asset_orders
WHERE
  asset_orders.status = 'Delivered'