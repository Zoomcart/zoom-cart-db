-- Order Item Table (to represent products in an order)
CREATE TABLE IF NOT EXISTS public.order_items
(
    order_item_id SERIAL PRIMARY KEY,
    order_id      INT,
    product_id    INT,
    quantity      INT            NOT NULL,
    subtotal      DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES public.orders (order_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES public.products (product_id) ON DELETE CASCADE
);
