CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- 用户的唯一ID，自增
    username VARCHAR(255) NOT NULL,          -- 用户名，不允许为空
    password VARCHAR(255) NOT NULL,          -- 密码，不允许为空
    role ENUM('farm', 'factory', 'consumer') NOT NULL,  -- 用户角色，农场(farm)、加工厂(factory)、消费者(consumer)，不允许为空
    email VARCHAR(255),                      -- 用户的电子邮箱，可以为空
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- 账户创建时间，默认当前时间
);
