-- 插入农场用户
INSERT INTO users (username, password, role, email) 
VALUES ('farm_user', 'password123', 'farm', 'farm@example.com');

-- 插入加工厂用户
INSERT INTO users (username, password, role, email) 
VALUES ('factory_user', 'password123', 'factory', 'factory@example.com');

-- 插入消费者用户
INSERT INTO users (username, password, role, email) 
VALUES ('consumer_user', 'password123', 'consumer', 'consumer@example.com');
-- 插入农场生产的水果产品
INSERT INTO products (name, category, description, creation_date, batch_number, farm_id)
VALUES ('Apple', 'Fruit', 'Fresh red apples', '2024-12-01', 'A123', 1);

-- 插入农场生产的蔬菜产品
INSERT INTO products (name, category, description, creation_date, batch_number, farm_id)
VALUES ('Carrot', 'Vegetable', 'Fresh organic carrots', '2024-12-01', 'C456', 1);
-- 插入农场生产步骤
INSERT INTO supply_chain_steps (product_id, step_name, status, location, handler_id)
VALUES (1, 'farming', 'completed', 'Farm A', 1);  -- Apple 的农场生产

-- 插入产品加工步骤（加工厂）
INSERT INTO supply_chain_steps (product_id, step_name, status, location, handler_id)
VALUES (1, 'processing', 'in-progress', 'Factory A', 2);  -- Apple 的加工厂加工

-- 插入消费者接收步骤（配送）
INSERT INTO supply_chain_steps (product_id, step_name, status, location, handler_id)
VALUES (1, 'delivery', 'pending', 'Consumer Address', 3);  -- Apple 待配送给消费者

-- 插入农场生产步骤（Carrot）
INSERT INTO supply_chain_steps (product_id, step_name, status, location, handler_id)
VALUES (2, 'farming', 'completed', 'Farm B', 1);  -- Carrot 的农场生产

-- 插入产品加工步骤（加工厂）
INSERT INTO supply_chain_steps (product_id, step_name, status, location, handler_id)
VALUES (2, 'processing', 'pending', 'Factory B', 2);  -- Carrot 待加工
