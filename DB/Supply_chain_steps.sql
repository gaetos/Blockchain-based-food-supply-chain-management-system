CREATE TABLE supply_chain_steps (
    step_id INT AUTO_INCREMENT PRIMARY KEY,   -- 步骤的唯一ID，自增
    product_id INT,                           -- 产品ID，关联到 `products` 表
    step_name ENUM('farming', 'processing', 'delivery') NOT NULL,  -- 供应链环节名称：'farming'（农业生产）、'processing'（加工）、'delivery'（配送）
    status ENUM('pending', 'in-progress', 'completed', 'delivered') NOT NULL,  -- 步骤状态：'pending'（待处理）、'in-progress'（进行中）、'completed'（已完成）、'delivered'（已交付）
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 步骤执行的时间戳，默认当前时间
    location VARCHAR(255),                     -- 位置（如农场地址、加工厂地址等）
    handler_id INT,                            -- 该步骤的处理人ID（对应 `users` 表中的 `user_id`）
    FOREIGN KEY (product_id) REFERENCES products(product_id),  -- 外键，指向 `products` 表的 `product_id` 字段
    FOREIGN KEY (handler_id) REFERENCES users(user_id)  -- 外键，指向 `users` 表的 `user_id` 字段
);
