-- Dữ liệu mẫu 
create database qlsv_stu;

create table students (
    id serial primary key,
    full_name varchar(100),
    gender varchar(10),
    birth_year int,
    major varchar(50),
    gpa decimal(3,1)
);

insert into students (full_name, gender, birth_year, major, gpa) values
('nguyễn văn a', 'nam', 2002, 'cntt', 3.6),
('trần thị bích ngọc', 'nữ', 2001, 'kinh tế', 3.2),
('lê quốc cường', 'nam', 2003, 'cntt', 2.7),
('phạm minh anh', 'nữ', 2000, 'luật', 3.9),
('nguyễn văn a', 'nam', 2002, 'cntt', 3.6),
('lưu đức tài', 'nam', 2004, 'cơ khí', null),
('võ thị thu hằng', 'nữ', 2001, 'cntt', 3.0);

drop table students
-- Yêu cầu: Thực hiện các yêu cầu sau bằng SQL:
-- Chèn dữ liệu mới:
	-- Thêm sinh viên “Phan Hoàng Nam”, giới tính Nam, sinh năm 2003, ngành CNTT, GPA 3.8'
insert into students(full_name,gender,birth_year,major,gpa) values
('Phan Hoàng Nam','nam',2003,'cntt',3.8);

-- Cập nhật dữ liệu:
	-- Sinh viên “Lê Quốc Cường” vừa cải thiện học lực, cập nhật gpa = 3.4
update students
set gpa = 3.4
where full_name ilike 'Lê Quốc Cường'

-- Xóa dữ liệu:
	-- Xóa tất cả sinh viên có gpa IS NULL
delete from students 
where gpa is null

-- Truy vấn cơ bản:
	-- Hiển thị sinh viên ngành CNTT có gpa >= 3.0, chỉ lấy 3 kết quả đầu tiên
select full_name as "Tên sinh viên",gpa
from students
where gpa >=3.0
limit 3

-- Loại bỏ trùng lặp:
	-- Liệt kê danh sách ngành học duy nhất
select distinct major as "Ngành Học"
from students 

-- Sắp xếp:
	-- Hiển thị sinh viên ngành CNTT, sắp xếp giảm dần theo GPA, sau đó tăng dần theo tên
select full_name as "Tên sinh viên", major as "Ngành học",gpa
from students
order by gpa desc,full_name asc

-- Tìm kiếm:
	-- Tìm sinh viên có tên bắt đầu bằng “Nguyễn”
	-- Khoảng giá trị: Hiển thị sinh viên có năm sinh từ 2001 đến 2003
select full_name as "Tên sinh viên",birth_year as "Năm sinh"
from students
where full_name ilike 'Nguyễn%' and birth_year between 2001 and 2003


	