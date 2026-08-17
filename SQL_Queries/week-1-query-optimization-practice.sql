-- SQL Query Optimization Practice - Aug 17

-- Query 1: Subquery vs JOIN
-- SLOW: Subquery approach
EXPLAIN QUERY PLAN
SELECT * FROM customers 
WHERE customer_id IN (
    SELECT customer_id FROM orders WHERE status = 'Completed'
);

-- FAST: JOIN approach
EXPLAIN QUERY PLAN
SELECT c.* FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Completed';

-- Query 2: INDEX usage
-- SLOW: Without index
EXPLAIN QUERY PLAN
SELECT * FROM orders WHERE status = 'Pending';

-- FAST: With index
CREATE INDEX idx_order_status ON orders(status);
EXPLAIN QUERY PLAN
SELECT * FROM orders WHERE status = 'Pending';

-- Query 3: SELECT * vs Specific Columns
-- SLOW: All columns
SELECT * FROM order_items WHERE order_id = 5;

-- FAST: Only needed columns
SELECT order_item_id, product_id, quantity FROM order_items 
WHERE order_id = 5;
