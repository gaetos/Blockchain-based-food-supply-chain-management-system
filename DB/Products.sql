-- Active: 1733303124659@@127.0.0.1@3306@fscms
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,  -- 产品的唯一ID，自增
    name VARCHAR(255) NOT NULL,                 -- 产品名称，不允许为空
    category VARCHAR(255) NOT NULL,             -- 产品类别（例如：蔬菜、水果、加工食品等），不允许为空
    description TEXT,                           -- 产品描述，可以为空
    creation_date DATE,                         -- 产品创建日期
    batch_number VARCHAR(255),                  -- 产品的批次号
    farm_id INT,                                -- 农场ID，关联到 `users` 表中的农场用户
    FOREIGN KEY (farm_id) REFERENCES users(user_id)  -- 外键，指向 `users` 表的 `user_id` 字段，表示产品来源的农场
);
