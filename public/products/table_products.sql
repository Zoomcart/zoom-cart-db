-- Product Table
CREATE TABLE IF NOT EXISTS public.products
(
    product_id         SERIAL PRIMARY KEY,
    name               VARCHAR(100)   NOT NULL,
    description        TEXT,
    price              DECIMAL(10, 2) NOT NULL,
    quantity_available INT            NOT NULL,
    is_available       BOOLEAN   DEFAULT true, -- Indicates if the product is currently being sold
    image_url          VARCHAR(255), -- Add this column to store the image URL
    created_at         TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);