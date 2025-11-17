
create database QuanLyThuVien;

use QuanLyThuVien;

create table TacGia(
	MaTacGia INT primary key AUTO_INCREMENT,
    TenTacGia VARCHAR(100) not null,
	QuocTich VARCHAR(50)
);

create table DocGia(
	MaDocGia INT primary key AUTO_INCREMENT,
	TenDocGia VARCHAR(100) not null,
	DiaChi VARCHAR(255),
	SoDienThoai VARCHAR(15) unique
);

insert into TacGia (TenTacGia, QuocTich)
values 
('Nguyễn Nhật Ánh', 'Việt Nam'),
('J.K. Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');

insert into DocGia ( TenDocGia, DiaChi, SoDienThoai )
values
	('Nguyễn Văn A', '123 Đường ABC, Hà Nội', '0901234567'),
	('Trần Thị B', '456 Đường XYZ, TP.HCM', '0912345678'),
	('Lê Văn C', '789 Đường LMN, Đà Nẵng', '0923456789'),
	('Phạm Thị D', '101 Đường QRS, Hà Nội', '0934567890'),
	('Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0945678901');
    
SELECT *
FROM TacGia
WHERE QuocTich = 'Việt Nam';

SELECT *
FROM DocGia
WHERE DiaChi LIKE '%Hà Nội%';

SELECT TenDocGia, SoDienThoai
FROM DocGia;
