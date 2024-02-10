-- Order Table
CREATE TABLE IF NOT EXISTS public.orders
(
    order_id     SERIAL PRIMARY KEY,
    user_id      INT,
    created_at   TIMESTAMP   DEFAULT CURRENT_TIMESTAMP,
    status       VARCHAR(20) DEFAULT 'pending',
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES public.users (user_id) ON DELETE CASCADE
);
