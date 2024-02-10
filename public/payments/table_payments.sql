-- Payment Table
CREATE TABLE IF NOT EXISTS public.payments
(
    payment_id        SERIAL PRIMARY KEY,
    order_id          INT,
    user_id           INT,
    payment_intent_id VARCHAR(100)   NOT NULL,
    payment_status    VARCHAR(20)    NOT NULL,
    amount            DECIMAL(10, 2) NOT NULL,
    currency          VARCHAR(3)     NOT NULL,
    created_at        TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES public.orders (order_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES public.users (user_id) ON DELETE CASCADE
);
