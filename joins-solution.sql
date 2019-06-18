## Tasks
1. Get all customers and their addresses.
-- SELECT * FROM "customers"
-- FULL JOIN "addresses" ON "customers"."id"="addresses"."id";

2. Get all orders and their line items (orders, quantity and product).
-- SELECT * FROM "line_items"
-- FULL JOIN "orders" on "orders"."id"="line_items"."order_id";

3. Which warehouses have cheetos?
-- SELECT "warehouse" FROM "products"
-- JOIN "warehouse_product"
-- ON "products"."id"="warehouse_product"."product_id"
-- JOIN "warehouse" 
-- ON "warehouse"."id"="warehouse_product"."warehouse_id"
-- WHERE "products"."description"='cheetos';


4. Which warehouses have diet pepsi?
-- SELECT "warehouse" FROM "products"
-- JOIN "warehouse_product"
-- ON "products"."id"="warehouse_product"."product_id"
-- JOIN "warehouse" 
-- ON "warehouse"."id"="warehouse_product"."warehouse_id"
-- WHERE "products"."description"='diet pepsi';

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
-- SELECT "first_name", "last_name", COUNT("orders"."id") FROM "customers"
-- JOIN "addresses"
-- ON "addresses"."customer_id"="customers"."id"
-- JOIN "orders"
-- ON "orders"."address_id"="addresses"."id"
-- GROUP BY "customers"."first_name", "customers"."last_name";


6. How many customers do we have?
-- SELECT COUNT(*) FROM "customers";


7. How many products do we carry?
-- SELECT COUNT(*) FROM "products";


8. What is the total available on-hand quantity of diet pepsi?
-- SELECT SUM("on_hand") FROM "warehouse"
-- JOIN "warehouse_product"
-- ON "warehouse"."id"="warehouse_product"."warehouse_id"
-- JOIN "products"
-- ON "warehouse_product"."product_id"="products"."id"
-- WHERE "products"."description"='diet pepsi';
