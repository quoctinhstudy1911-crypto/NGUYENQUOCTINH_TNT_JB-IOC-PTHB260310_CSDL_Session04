-- Dữ liệu
create database ql_product_stu

create table products (
    id serial primary key,
    name varchar(150),
    category varchar(50),
    price bigint,
    stock int,
    manufacturer varchar(100)
);

insert into products (name, category, price, stock, manufacturer) values
('laptop dell xps 13', 'laptop', 25000000, 12, 'dell'),
( 'chuột logitech m90', 'phụ kiện', 150000, 50, 'logitech'),
( 'bàn phím cơ razer', 'phụ kiện', 2200000, 0, 'razer'),
( 'macbook air m2', 'laptop', 32000000, 7, 'apple'),
( 'iphone 14 pro max', 'điện thoại', 35000000, 15, 'apple'),
( 'laptop dell xps 13', 'laptop', 25000000, 12, 'dell'),
( 'tai nghe airpods 3', 'phụ kiện', 4500000, null, 'apple');


-- Yêu cầu: Thực hiện các yêu cầu sau bằng SQL
-- Chèn dữ liệu mới: Thêm sản phẩm “Chuột không dây Logitech M170”, loại Phụ kiện, giá 300000, tồn kho 20, hãng Logitech
insert into products(name,category,price,stock,manufacturer) values
('Chuột không dây Logitech M170','phụ kiện',300000,20,'logitech');

-- Cập nhật dữ liệu: Tăng giá tất cả sản phẩm của Apple thêm 10%
update products
set price = price + price * 0.1;

-- Xóa dữ liệu: Xóa sản phẩm có stock = 0
delete from products
where stock = 0;

-- Lọc theo điều kiện: Hiển thị sản phẩm có price BETWEEN 1000000 AND 30000000
select name as "Tên sản phẩm", price as "Giá"
from products
where price between 1000000 and 30000000;

-- Lọc giá trị NULL: Hiển thị sản phẩm có stock IS NULL
select name as "Tên sản phẩm", stock as "Tồn kho"
from products
where stock is null;

-- Loại bỏ trùng: Liệt kê danh sách hãng sản xuất duy nhất
select distinct manufacturer as "Hãng sản xuất"
from products;

-- Sắp xếp dữ liệu Hiển thị toàn bộ sản phẩm, sắp xếp giảm dần theo giá, sau đó tăng dần theo tên
select name as "Tên sản phẩm", price as "Giá"
from products
order by price desc, name asc

-- Tìm kiếm (LIKE và ILIKE): Tìm sản phẩm có tên chứa từ “laptop” (không phân biệt hoa thường)
-- Giới hạn kết quả: Chỉ hiển thị 2 sản phẩm đầu tiên sau khi sắp xếp
select name as "Tên sản phẩm"
from products
where name ilike '%laptop%'
limit 2




