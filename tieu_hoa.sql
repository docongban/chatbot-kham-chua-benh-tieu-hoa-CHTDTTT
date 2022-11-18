create database tieu_hoa;
use tieu_hoa;

create table an_uong(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    A01 varchar(10),
    A02 varchar(10)
);
insert into an_uong(name,code,A01,A02) values("Bình thường","A-01",1,0);
insert into an_uong(name,code,A01,A02) values("Chán ăn, ăn không ngon","A-02",0,1);

create table non(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    N01 varchar(10),
    N02 varchar(10),
    N03 varchar(10),
    N04 varchar(10),
    N02N03 varchar(10)
);
insert into non(name,code,N01,N02,N03,N04,N02N03) values("Không nôn","N-01",1,0,0,0,0);
insert into non(name,code,N01,N02,N03,N04,N02N03) values("Buồn nôn, ợ chua","N-02",0,1,0,0,0.8);
insert into non(name,code,N01,N02,N03,N04,N02N03) values("Nôn","N-03",0,0,1,0.6,0.9);
insert into non(name,code,N01,N02,N03,N04,N02N03) values("Nôn ra máu","N-04",0,0,0.6,1,0.4);
insert into non(name,code,N01,N02,N03,N04,N02N03) values("Buồn nôn, ợ chua, nôn","N-02,N-03",0,0.8,0.9,0.4,1);

create table di_ngoai(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    DN01 varchar(10),
    DN02 varchar(10),
    DN03 varchar(10),
    DN04 varchar(10),
    DN05 varchar(10),
    DN06 varchar(10),
    DN07 varchar(10),
    DN08 varchar(10),
    DN09 varchar(10),
    DN10 varchar(10),
    DN11 varchar(10)
);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Bình thường","ĐN-01",1,0,0,0,0,0,0,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Đi ngoài ra nước","ĐN-02",0,1,0,0,0,0,0,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Tần suất đi ngoài nhiều hơn","ĐN-03",0,0,1,0,0,0,0,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Màu phân thẫm","ĐN-04",0,0,0,1,0.4,0,0,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Phân có dính máu","ĐN-05",0,0,0,0.4,1,0.5,0,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Khó đi ngoài","ĐN-06",0,0,0,0,0.5,1,0.6,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Không đi ngoài được","ĐN-07",0,0,0,0,0,0.6,1,0,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Phân có chứa trứng hay thể tư dưỡng của histolyca","ĐN-08",0,0,0,0,0,0,0,1,0,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Phân bạc màu, nước tiểu sẫm màu","ĐN-09",0,0,0,0,0,0,0,0,1,0,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Nước tiểu có màu vàng đậm, phân màu đất sét","ĐN-10",0,0,0,0,0,0,0,0,0,1,0);
insert into di_ngoai(name,code,DN01,DN02,DN03,DN04,DN05,DN06,DN07,DN08,DN09,DN10,DN11) values("Nước tiểu vàng sẫm","ĐN-11",0,0,0,0,0,0,0,0,0,0,1);
create table bung(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    B01 varchar(10),
    B02 varchar(10),
    B03 varchar(10),
    B04 varchar(10),
    B05 varchar(10),
    B06 varchar(10),
    B07 varchar(10),
    B08 varchar(10),
    B09 varchar(10),
    B10 varchar(10),
    B03B04 varchar(100)
);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Bình thường","B-01",1,0,0,0,0,0,0,0,0,0,0);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đau vùng thượng vị","B-02",0,1,0,0,0.6,0.9,0,0,0.6,0,0.2);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đầy bụng","B-03",0,0,1,0.7,0,0,0.9,0,0.4,0,0.9);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Bụng sưng to","B-04",0,0,0.7,1,0,0,0.8,0,0.4,0,0.9);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Nóng rát thượng vị","B-05",0,0.6,0,0,1,0.7,0,0,0,0,0);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đau vụng thượng vị dữ dội","B-06",0,0.9,0,0,0.7,1,0,0,0,0,0);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đầy bụng sau ăn","B-07",0,0,0.9,0.8,0,0,1,0,0,0,0.8);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đau hạ sườn","B-08",0,0,0,0,0,0,0,1,0,0,0);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Rối loạn tiêu hóa","B-09",0,0.6,0.4,0.4,0,0,0,0,1,0,0.4);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đau vị trí gan","B-10",0,0,0,0,0,0,0,0,0,1,0);
insert into bung(name,code,B01,B02,B03,B04,B05,B06,B07,B08,B09,B10,B03B04) values("Đầy bụng, Bụng sưng to","B-03,B-04",0,0.2,0.9,0.9,0,0,0.8,0,0.4,0,1);
create table can_nang(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    CN01 varchar(10),
    CN02 varchar(10),
    CN03 varchar(10)
);
insert into can_nang(name,code,CN01,CN02,CN03) values("Bình thường","CN-01",1,0,0);
insert into can_nang(name,code,CN01,CN02,CN03) values("Sút cân","CN-02",0,1,0);
insert into can_nang(name,code,CN01,CN02,CN03) values("Tăng cân","CN-03",0,0,1);
create table da(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    D01 varchar(10),
    D02 varchar(10),
    D03 varchar(10),
    D04 varchar(10),
    D05 varchar(10),
    D06 varchar(10),
    D07 varchar(10)
);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Bình thường","D-01",1,0,0,0,0,0,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Màu da vàng nhạt","D-02",0,1,0.2,0,0,0,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Màu da xanh đậm","D-03",0,0.2,1,0.4,0,0,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Màu da bị xạm lại","D-04",0,0,0.4,1,0,0,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Da xanh xao","D-05",0,0,0,0,1,0,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Ngứa da","D-06",0,0,0,0,0,1,0);
insert into da(name,code,D01,D02,D03,D04,D05,D06,D07) values("Mạch máu mạng nhện trên da","D-07",0,0,0,0,0,0,1);
create table da_day(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    DD01 varchar(10),
    DD02 varchar(10),
    DD03 varchar(10),
    DD04 varchar(10),
    DD05 varchar(10),
    DD06 varchar(10),
    DD07 varchar(10)
);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Bình thường","DD-01",1,0,0,0,0,0,0);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Xuất huyết","DD-02",1,1,0,0.8,0,0,0);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Xuất hiện những nốt, cục mụn, khối u","DD-03",0,0,1,0,0,0,0);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Xuất hiện những ổ viêm","DD-04",0,0.8,0,1,0.5,0,0);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Thủng","DD-05",0,0,0,0.5,1,0,0);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Hình ảnh tuyết rơi","DD-06",0,0,0,0,0,1,0.6);
insert into da_day(name,code,DD01,DD02,DD03,DD04,DD05,DD06,DD07) values("Hình chậu","DD-07",1,0,0,0,0,0.6,1);
create table mau(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    M01 varchar(10),
    M02 varchar(10),
    M03 varchar(10),
    M04 varchar(10),
    M05 varchar(10),
    M06 varchar(10),
    M07 varchar(10),
    M08 varchar(10),
    M09 varchar(10),
    M10 varchar(10),
    M11 varchar(10),
    M12 varchar(10),
    M13 varchar(10)
);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Bình thường","M-01",1,0,0,0,0,0,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Thiếu máu","M-02",0,0,0.4,0,0,0.4,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Giảm protein","M-03",0,0.4,1,0,0,0,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Hematocrit tăng","M-04",0,0,0,1,0,0,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Tăng bạch cầu","M-05",0,0,0,0,1,0,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Nồng độ natri giảm","M-06",0,0.4,0,0,0,1,0,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Nồng độ sắt giảm","M-07",0,0,0,0,0,0,1,0,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Xuất hiện các kháng thể đặc trưng","M-08",0,0,0,0,0,0,0,1,0,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Dương tính với anti HCV, HCV-ARN đủ lớn","M-09",0,0,0,0,0,0,0,0,1,0,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Dương tính với HDV Ab","M-10",0,0,0,0,0,0,0,0,0,1,0,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Dương tính với anti HEV","M-11",0,0,0,0,0,0,0,0,0,0,1,0,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Dương tính IgM, IgG","M-12",0,0,0,0,0,0,0,0,0,0,0,1,0);
insert into mau(name,code,M01,M02,M03,M04,M05,M06,M07,M08,M09,M10,M11,M12,M13) values("Dương tính HBsAg, HBeAg, Anti-HBe, Anti-HBc, Anti-HBc IgM","M-13",0,0,0,0,0,0,0,0,0,0,0,0,1);
create table hong(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    H01 varchar(10),
    H02 varchar(10),
    H03 varchar(10),
    H04 varchar(10)
);
insert into hong(name,code,H01,H02,H03,H04) values("Bình thường","H-01",1,0,0,0);
insert into hong(name,code,H01,H02,H03,H04) values("Khó nuốt","H-02",0,1,0.3,0);
insert into hong(name,code,H01,H02,H03,H04) values("Khản giọng","H-03",0,0.3,1,0.2);
insert into hong(name,code,H01,H02,H03,H04) values("Ho","H-04",0,0,0.2,1);
create table tien_su(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    TS01 varchar(10),
    TS02 varchar(10),
    TS03 varchar(10),
    TS04 varchar(10),
    TS05 varchar(10),
    TS06 varchar(10),
    TS07 varchar(10),
    TS08 varchar(10),
    TS09 varchar(10),
    TS10 varchar(10),
    TS11 varchar(10),
    TS12 varchar(10),
    TS13 varchar(10),
    TS14 varchar(10),
    TS15 varchar(10),
    TS16 varchar(10),
    TS17 varchar(10),
    TS03TS04 varchar(100)
);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Bình thường","TS-01",1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Gia đình có người mắc bệnh","TS-02",0,1,0.3,0.3,0,0,0,0,0,0,0.8,0.8,0,0.8,0.8,0.8,0.8,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Sừ dụng thuốc lá, rượu, bia, chất kích thích","TS-03",0,0.3,1,1,0,0,0,0.9,0.9,0,0,0,0,0,0,0.9,0,1);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Ăn uống không khoa học","TS-04",0,0.3,1,1,1,0,0,0.5,0.5,0,0,0,0.8,0,0,0,0,1);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Béo phì","TS-05",0,0,0,1,1,0,0,0,0,0,0,0.8,0,0,0.8,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Bị can thiệp ngoại khoa ổ bụng","TS-06",0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Tuổi trên 50","TS-07",0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Viêm dạ dày","TS-08",0,0,0.9,0.5,0,0,0,1,0,0,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Loét dạ dày, tá tràng","TS-09",0,0,0.9,0.5,0,0,0,0,1,0,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Chứng phì đại môn vị","TS-10",0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Bệnh lao, giang mai","TS-11",0,0.8,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Ung thư đầu tụy, u đầu tụy","TS-12",0,0.8,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Các vấn đề về đường mật","TS-13",0,0,0,0.8,0.8,0,0,0,0,0,0,0,1,0,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Viêm gan B","TS-14",0,0.8,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Viêm gan C","TS-15",0,0.8,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Xơ gan","TS-16",0,0.8,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Viêm gan siêu vi","TS-17",0,0.8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0);
insert into tien_su(name,code,TS01,TS02,TS03,TS04,TS05,TS06,TS07,TS08,TS09,TS10,TS11,TS12,TS13,TS14,TS15,TS16,TS17,TS03TS04) values("Sừ dụng thuốc lá, rượu, bia, chất kích thích, ăn uống không khoa học","TS-03,TS-04",0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1);
create table gan(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(100),
    G01 varchar(10),
    G02 varchar(10),
    G03 varchar(10),
    G04 varchar(10),
    G05 varchar(10),
    G06 varchar(10),
    G07 varchar(10),
    G08 varchar(10),
    G09 varchar(10),
    G10 varchar(10),
    G11 varchar(10)
);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Bình thường","G-01",1,0,0,0,0,0,0,0,0,0,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("ALP tăng","G-02",0,1,0,0,0,0,0,0,0,0.8,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Albumin giảm","G-03",0,0,1,0,0,0,0,0,0,0.8,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Men gan tăng","G-04",0,0,0,1,0,0,0,0,0,0.8,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Bilirubin tăng","G-05",0,0,0,0,1,0,0,0,0,0.8,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Xuất huyết","G-06",0,0,0,0,0,1,0,0,0,0.8,0.4);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Có khối u","G-07",0,0,0,0,0,0,1,0,0,0,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Prothrombin giảm","G-08",0,0,0,0,0,0,0,1,0,0.8,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("A/G đảo ngược","G-09",0,0,0.9,0,0,0,0,0,1,0.6,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Rối loạn chức năng gan","G-10",0,0.8,0.8,0.8,0.8,0.8,0,0.8,0.8,1,0);
insert into gan(name,code,G01,G02,G03,G04,G05,G06,G07,G08,G09,G10,G11) values("Gan to, ấn đau","G-11",0,0,0,0,0,0.4,0,0,0,0,1);
create table sot(
	id int primary key auto_increment,
    name varchar(255),
    code varchar(10),
    S01 varchar(10),
    S02 varchar(10),
    S03 varchar(10),
    S04 varchar(10)
);
insert into sot(name,code,S01,S02,S03,S04) values("Không sốt","S-01",1,0.4,0,0);
insert into sot(name,code,S01,S02,S03,S04) values("Sốt nhẹ","S-02",0.4,1,0.6,0.2);
insert into sot(name,code,S01,S02,S03,S04) values("Sốt cao","S-03",0,0.6,1,0.4);
insert into sot(name,code,S01,S02,S03,S04) values("Đau mỏi cơ","S-04",0,0.2,0.4,1);

create table case_viem_loet_da_day(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(100),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-01","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-02","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-01","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-03","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");
insert into case_viem_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-02","B-05","CN-01","D-01","DD-04","M-01","H-01","TS-03,TS-04","G-01","S-01");

create table case_thung_o_loet_da_day(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_thung_o_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-07","B-04","CN-01","D-05","DD-05","M-01","H-01","TS-08","G-01","S-01");
insert into case_thung_o_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-07","B-04","CN-01","D-05","DD-05","M-01","H-01","TS-01","G-01","S-01");
insert into case_thung_o_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-07","B-03,B-04","CN-01","D-05","DD-05","M-01","H-01","TS-01","G-01","S-01");
insert into case_thung_o_loet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-07","B-03,B-04","CN-01","D-05","DD-05","M-01","H-01","TS-08","G-01","S-01");

create table case_xuat_huyet_da_day(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(100),
    gan varchar(10),
    sot varchar(10)
);
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-01","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-08","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-05","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-06","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_xuat_huyet_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-04","B-02","CN-01","D-01","DD-02","M-02","H-01","TS-03,TS-04","G-01","S-01");

create table case_trao_nguoc_da_day(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(100),
    gan varchar(10),
    sot varchar(10)
);
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-02","TS-01","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-03","TS-01","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-04","TS-01","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-02","TS-08","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-03","TS-08","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-04","TS-08","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-02","TS-03,TS-04","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-03","TS-03,TS-04","G-01","S-01");
insert into case_trao_nguoc_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-02","CN-01","D-01","DD-01","M-01","H-04","TS-03,TS-04","G-01","S-01");

create table case_ung_thu_da_day(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(100),
    gan varchar(10),
    sot varchar(10)
);
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-01","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-02","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-03,TS-04","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-06","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-07","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02,N-03","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-02","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");
insert into case_ung_thu_da_day(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-04","ĐN-01","B-07","CN-02","D-01","DD-03","M-02","H-01","TS-08","G-01","S-01");

create table case_hep_mon_vi(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-06","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-03","CN-02","D-01","DD-07","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-01","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-06","M-04","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-03","H-01","TS-12","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-09","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-10","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-11","G-01","S-01");
insert into case_hep_mon_vi(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-03","ĐN-01","B-07","CN-02","D-01","DD-07","M-04","H-01","TS-12","G-01","S-01");

create table case_ap_xe_gan(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-02","H-01","TS-01","G-02","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-02","H-01","TS-01","G-03","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-02","H-01","TS-01","G-04","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-02","H-01","TS-01","G-05","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-05","H-01","TS-01","G-02","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-05","H-01","TS-01","G-03","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-05","H-01","TS-01","G-04","S-01");
insert into case_ap_xe_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-08","B-01","CN-01","D-01","DD-01","M-05","H-01","TS-01","G-05","S-01");


create table case_ung_thu_gan(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-01","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-02","CN-02","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-02","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-03","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-04","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-15","G-07","S-01");
insert into case_ung_thu_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-08","CN-02","D-02","DD-01","M-01","H-01","TS-16","G-07","S-01");

create table case_tac_mat_gan(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-13","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-06","DD-01","M-01","H-01","TS-13","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-02","DD-01","M-01","H-01","TS-13","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-06","DD-01","M-01","H-01","TS-13","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-13","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-06","DD-01","M-01","H-01","TS-13","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-02","DD-01","M-01","H-01","TS-13","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-06","DD-01","M-01","H-01","TS-13","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-01","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-06","DD-01","M-01","H-01","TS-01","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-02","DD-01","M-01","H-01","TS-01","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-06","DD-06","M-01","H-01","TS-01","G-01","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-02","DD-01","M-01","H-01","TS-01","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-08","CN-01","D-06","DD-01","M-01","H-01","TS-01","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-02","DD-01","M-01","H-01","TS-01","G-06","S-01");
insert into case_tac_mat_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-01","ĐN-09","B-09","CN-01","D-06","DD-01","M-01","H-01","TS-01","G-06","S-01");


create table case_xo_gan_gan(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-03","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-04","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-17","G-03","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-03","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-04","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-17","G-04","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-05","H-01","TS-17","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-06","H-01","TS-17","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-02","DD-01","M-07","H-01","TS-17","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-03","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-04","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-05","H-01","TS-17","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-06","H-01","TS-17","G-05","S-01");
insert into case_xo_gan_gan(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-01","B-04","CN-02","D-07","DD-01","M-07","H-01","TS-17","G-05","S-01");

create table case_viem_gan_a(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-02","DD-01","M-12","H-01","TS-01","G-02","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-02","DD-01","M-12","H-01","TS-01","G-05","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-02","DD-01","M-12","H-01","TS-01","G-08","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-02","DD-01","M-12","H-01","TS-01","G-06","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-06","DD-01","M-12","H-01","TS-01","G-02","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-06","DD-01","M-12","H-01","TS-01","G-05","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-06","DD-01","M-12","H-01","TS-01","G-08","S-02");
insert into case_viem_gan_a(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-11","B-02","CN-01","D-06","DD-01","M-12","H-01","TS-01","G-06","S-02");

create table case_viem_gan_b(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_gan_b(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-09","B-08","CN-01","D-02","DD-01","M-13","H-01","TS-01","G-10","S-02");
insert into case_viem_gan_b(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-01","N-02","ĐN-09","B-08","CN-01","D-02","DD-01","M-13","H-01","TS-02","G-10","S-02");


create table case_viem_gan_c(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_gan_c(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-09","B-02","CN-01","D-02","DD-01","M-09","H-01","TS-01","G-10","S-02");
insert into case_viem_gan_c(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-09","B-02","CN-01","D-06","DD-01","M-09","H-01","TS-02","G-10","S-02");

create table case_viem_gan_d(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_gan_d(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-09","B-02","CN-01","D-02","DD-01","M-10","H-01","TS-14","G-10","S-03");
insert into case_viem_gan_d(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-01","ĐN-09","B-02","CN-01","D-06","DD-01","M-10","H-01","TS-14","G-10","S-03");

create table case_viem_gan_e(
	id int primary key auto_increment,
    an_uong varchar(10),
    non varchar(10),
    di_ngoai varchar(10),
    bung varchar(10),
    can_nang varchar(10),
    da varchar(10),
    da_day varchar(10),
    mau varchar(10),
    hong varchar(10),
    tien_su varchar(10),
    gan varchar(10),
    sot varchar(10)
);
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-02","DD-01","M-11","H-01","TS-01","G-11","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-03","DD-01","M-11","H-01","TS-01","G-11","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-02","DD-01","M-11","H-01","TS-01","G-10","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-03","DD-01","M-11","H-01","TS-01","G-10","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-02","DD-01","M-11","H-01","TS-04","G-11","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-03","DD-01","M-11","H-01","TS-04","G-11","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-02","DD-01","M-11","H-01","TS-04","G-10","S-04");
insert into case_viem_gan_e(an_uong,non,di_ngoai,bung,can_nang,da,da_day,mau,hong,tien_su,gan,sot) 
values("A-02","N-02","ĐN-09","B-02","CN-02","D-03","DD-01","M-11","H-01","TS-04","G-10","S-04");


create table benh(
	id int primary key auto_increment,
    name varchar(255),
    dieu_tri longtext,
    loi_khuyen longtext
);
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm loét dạ dày","Ngưng huốc kháng viêm không sreroid (NSAID) hay dùng các phác đồ tiệt trừ vi khuẩn Helicobacter pylori, nếu có. Hiện nay do việc đề kháng thuốc lan rộng của vi khuẩn nên phác đồ thường dùng là phác đồ 4 thuốc có Bismuth hoặc có Levofloxacin","Nên ăn: sữa, trứng, thực phẩm có nhiều đạm dễ tiêu: thịt lợn nạc, các nạc, rau củ tươi, các thức ăn có chứa tinh bột ít mùi vị và dễ tiêu như cơm, bánh mì,…<br>Không nên ăn: các loại thịt nguội chế biến sẵn như dăm bông, xúc xích, lạp sườn, …, những loại thực phẩm khô cứng, đồ chua cay, thức uống có ga, cà phê, đồ uống có cồn, chất kích thích, thuốc lá");
insert into benh(name, dieu_tri, loi_khuyen) values("Thủng ổ loét dạ dày","Chỉ định phẫu thuật khâu lỗ thủng dạ dày tá tràng. Mục đích chính chính là là sạch ổ bụng, khâu kín và làm liền vết thủng. Tùy vào từng trường hợp mà bác sĩ sẽ thực hiện khâu vết thủng đơn thuần hoặc kèm theo các kỹ thuật tạo hình môn vị, nối vị tràng,... Có thể thực hiện khâu lỗ thủng dạ dày bằng cách mở bụng hoặc qua cách nội soi ổ bụng","Trước phẫu thuật: tắm toàn bộ cơ thể sạch sẽ, tháo toàn bộ trang sức phụ kiện, cần đi vệ sinh trước phẫu thuật, cần có người giám hộ đi cùng<br>	Sau phẫu thuật: có 1 vài phản ứng phụ như: đau tức ở vị trí mổ, chướng bụng, chóng mặt, buồn nôn. Nếu có những triêu chứng sau: đau liên tục, chảy máu tại vết mổ, nôn ra máu, vết mổ bị sưng kèm theo sốt, chảy dịch thì cần báo cho bác sĩ ngay. Uống nước đường, chút sữa và dần dần sang cháo loãng, nên chia nhỏ thành nhiều khẩu phần và phải đảm bảo ăn chính uống sôi");
insert into benh(name, dieu_tri, loi_khuyen) values("Xuất huyết dạ dày","Với những trường hợp nhẹ thì ko cần can thiệp y tế, nếu tình trạng nghiêm trọng, chảy máu nhiều, liên tục và thường xuyên, người bệnh buộc phải tiến hành xét nghiệm, thực hiện các thủ thuật y khoa hoặc uống thuốc theo chỉ định của bác sĩ","Giữ tinh thần thoải mái, tránh stress quá mức, thường xuyên luyện tập thể thao để tăng cường sức khỏe, ăn chín uống sôi, nói không với thực phẩm bẩn, hạn chế nước ngọt có ga, bia rượu, Sinh hoạt hợp lý, không ăn quá no hoặc để bụng quá đói, không ngủ ngay sau khi ăn");
insert into benh(name, dieu_tri, loi_khuyen) values("Trào ngược dạ dày","Điều trị trào ngược dạ dày thực quản bao gồm các phương pháp thay đổi lối sống, thay đổi chế độ ăn, điều trị nội khoa, điều trị ngoại khoa và các thủ thuật khác. Phương pháp không dùng thuốc luôn được các bác sĩ khuyến khích bệnh nhân của mình. Một chế độ sinh hoạt hợp lý hay một chế độ ăn khoa học làm giảm đáng kể tần suất trào ngược dạ dày thực quản","Ăn thành từng bữa nhỏ. Nên ăn thường xuyên hơn là ăn ít bữa lớn đối với người có dấu hiệu trào ngược dạ dày thực quản, Lựa chọn các thực phẩm có tính kiềm, có khả năng trung hòa axit như thực phẩm từ tinh bột (bánh mì, bột yến mạch) hay đạm dễ tiêu, Hạn chế thực phẩm kích thích tăng tiết axit hay kích thích cơ thắt dưới thực quản: hoa quả có hàm lượng axit cao (chanh, cam, dứa...) và ít các sản phẩm từ sữa, Giảm sử dụng các thực phẩm giàu chất béo; thực phẩm chua cay, Không hút thuốc, uống rượu bia, đồ uống có gas, không sử dụng các chất kích thích, Giữ cân nặng hợp lý, Không nằm hoặc lao động ngay sau khi ăn, Thư giãn giảm stress có thể làm giảm triệu chứng trào ngược dạ dày thực quản một cách rõ ràng");
insert into benh(name, dieu_tri, loi_khuyen) values("Ung thư dạ dày","Phẫu thuật: Bác sĩ sẽ tiến hành cắt bỏ 1 phần hay toàn bộ dạ dày. Đây là phương pháp điều trị chủ yếu đối với ung thư dạ dày ở giai đoạn sớm<br>Hóa trị: Điều trị bằng các loại thuốc chống ung thư đặc biệt để tiêu diệt và ngăn cản sự phát triển của tế bào ung thư<br>Xạ trị: Dùng các tia phóng xạ để tiêu diệt các tế bào ung thư<br>Điều trị đích: Cũng là phương pháp trị ung thư bằng thuốc nhưng thuốc ở đây là một liệu pháp có mục tiêu cụ thể, tấn công vào các gen hay protein chuyên biệt được tìm thấy ở tế bào ung thư hoặc những tế bào có liên quan đến sự phát triển của khối u<br>Điều trị miễn dịch: Sử dụng các loại thuốc tác động vào hệ miễn dịch của người bệnh, giúp tiêu diệt tế bào ung thư","Duy trì cân nặng lý tưởng, giảm cân nếu béo phì, Tập luyện thể thao thường xuyên, Xây dựng chế độ ăn uống khoa học, an toàn vệ sinh thực phẩm, chế độ ăn giàu chất xơ, vitamin và khoáng chất, Hạn chế ăn các thực phẩm đóng hộp, thức ăn chế biến sẵn, nhiều dầu mỡ, nhiều muối, Bỏ thuốc lá, hạn chế bia rượu và không sử dụng các chất kích thích, Nếu mắc phải các bệnh về dạ dày, cần thăm khám sớm và điều trị triệt để, Khám và chữa trị tốt các khối polyp, khối u lành tính trong dạ dày");
insert into benh(name, dieu_tri, loi_khuyen) values("Hẹp môn vị","Thủ thuật phẫu thuật cho hẹp môn vị được gọi là pyloromyotomy trẻ có sức khỏe kém và bị mất nước nghiêm trọng, bác sĩ sẽ tiến hành bù nước và truyền dịch để phục hồi thể trạng trước khi thực hiện phẫu thuật. Sau 24-48 giờ, được về nhà và có thể ăn uống bình thường","Giữ tinh thần thoải mái, chia nhỏ bữa để tránh áp lực lên dạ dày và môn vị, nếu bệnh nhân sốt cao, nôn mửa, mệt mỏi,… Trong vòng 1-3 ngày nên đưa đến bệnh viện để chẩn đoán và điều trị kịp thời");
insert into benh(name, dieu_tri, loi_khuyen) values("Áp xe gan","o	Điều trị: Bệnh nhân bị áp xe gan được các bác sĩ phẫu thuật chọc hút ổ áp xe trước khi điều trị nội khoa. Sau đó bệnh phẩm được nuôi cấy và bệnh nhân được cho thuốc dựa vào kết quả kháng sinh đồ. Đây là sự phối hợp điều trị mang lại hiệu quả cao và tiết kiệm kinh phí chữa trị cho người bệnh. Điều trị bằng lưu rút mủ qua da nhưng phương pháp này có những hạn chế khó áp dụng với các áp xe lớn, nhiều ổ áp xe, các bệnh kết hợp như bệnh đường mật cần phẫu thuật","Thực hiện ăn chín uống sôi: không ăn các loại thức ăn sống như nem, gỏi, tiết canh... Không uống nước chưa được đun sôi như nước lã ao, hồ, suối... Rửa sạch tay bằng xà phòng trước khi ăn và sau khi đi vệ sinh. Khi cơ thể có dấu hiệu nhiễm khuẩn, cần đến cơ sở y tế khám và chữa trị ngay");
insert into benh(name, dieu_tri, loi_khuyen) values("Ung thư gan","Việc lựa chọn phương pháp điều trị ung thư gan phải phụ thuộc vào mức độ lan rộng của tổn thương và tình trạng xơ gan, các phương pháp điều trị ung thư gan phổ biến bao gồm: phẫu thuật, ghép gan, phá hủy u tại chỗ, nút hóa chất động mạch gan, xạ trị, hóa trị hay điều trị nhắm trúng đích","Khám sức khỏe định kỳ siêu âm gan 6 tháng/lần, tiêm đầy đủ vacxin phòng viêm gan B, tránh tiếp xúc với các hóa chất độc hại dễ làm tổn thương gan để giảm nguy cơ mắc bệnh. Khi nghi ngờ mắc ung thư gan, bác sĩ sẽ chỉ định xét nghiệm máu, thăm chụp cắt lớp, sinh thiết gan… để đưa ra kết luận chính xác");
insert into benh(name, dieu_tri, loi_khuyen) values("Tắc mật gan","Nếu bệnh nhân bị ứ mật vàng da do bị sỏi mật thì bác sĩ sẽ chỉ định cho dùng thuốc kháng sinh và thuốc giảm đau trong điều trị nhiễm trùng, khuyến khích áp dụng biện pháp nội soi để gắp sỏi mật đang làm tắc nghẽn ống mật. Nếu nguyên nhân là do có khối u ác tính, có thể tiến hành phẫu thuật cho bệnh nhân để loại bỏ khối u; tuy nhiên đa phần trong hầu hết các trường hợp bệnh nhân sẽ được chỉ định dùng biện pháp khác hiệu quả hơn để thay thế phẫu thuật đó là xạ trị hoặc hóa trị","Áp dụng ngay cho mình một chế độ dinh dưỡng lành mạnh, cân bằng và hạn chế việc tiêu thụ nhiều thực phẩm giàu chất béo, tránh xa rượu bia và đồ uống có cồn");
insert into benh(name, dieu_tri, loi_khuyen) values("Xơ gan","Sử dụng thuốc để kiểm soát viêm gan siêu vi: Thuốc điều trị viêm gan B hoặc C có thể hạn chế tổn thương tế bào gan do các tình trạng này gây ra<br>Cai rượu: Người bị xơ gan tuyệt đối không được sử dụng rượu. Những người bị xơ gan do lạm dụng rượu cần phải cai rượu<br>Giảm cân: Những người bị xơ gan do viêm gan nhiễm mỡ không do rượu cần giảm cân và kiểm soát lượng đường trong máu<br>	Sử dụng thuốc kiểm soát các nguyên nhân và triệu chứng khác của xơ gan: Một số loại xơ gan, chẳng hạn như xơ gan ứ mật nguyên phát, đáp ứng tốt với thuốc điều trị","Tránh ăn các thức ăn nhiều gia vị, giàu mỡ. Cần ăn nhiều loại protein được nấu nhừ. Bên cạnh đó cũng cần ăn các chất xơ như cam, cà rốt, gạo lứt, đậu đỏ, các loại rau xanh. Trong giai đoạn này bệnh nhân nên uống nhiều nước, đặc biệt nước cam, nước chanh vừa tăng lượng sinh tố, vừa tăng nước cho cơ thể. Tuyệt đối bỏ rượu, nên sử dụng dầu thực vật và nên chia thành nhiều bữa ăn trong ngày");
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm gan A","Không có phương pháp đặc hiệu để điều trị viêm gan A. Cơ thể người bệnh sẽ tự đào thải virus viêm gan A sau vài tuần mà không cần chữa trị","Thường xuyên rửa tay bằng xà phòng, đặc biệt là sau khi đi vệ sinh, trước khi ăn và chế biến thức ăn, nấu chín thức ăn, không ăn sống động vật hoặc nấu chưa chín, không dùng chung đồ dùng sinh hoạt cá nhân với người có bệnh");
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm gan B","Việc điều trị chủ yếu là ngăn chặn sự sinh sôi, nhân lên của virus hoặc các chất làm rối loạn quá trình tổng hợp, tự nhân lên của virus.Trường hợp mẹ đã nhiễm HBV, sau sinh em bé cần được tiêm huyết thanh đặc hiệu chống virus HBV","Tăng cường đề kháng của cơ thể bằng nghỉ ngơi, chế độ ăn uống cần chú ý đến các loại thực phẩm có lợi cho gan, hạn chế uống rượu, nên tiêm phòng vắc xin viêm gan B càng sớm càng tốt");
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm gan C","Tiến hành một số xét nghiệm để đánh giá được tổn thương gan, qua đó lên phác đồ điều trị hợp lý nhất. Đối với những trường hợp mắc viêm gan C mạn tính thì dung thuốc điều trị kháng virus là phương pháp cần thiết","Ngừng hoặc hạn chế tối đa sử dụng rượu bia, chế độ dinh dưỡng có lợi cho gan, tăng cường vận động tiêu thụ năng lượng, ngủ đủ giấc và hạn chế trạng thái căng thẳng");
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm gan D","Hiện nay chưa có phương pháp điều trị đặc hiệu nào đối với viêm gan D cấp tính hoặc mãn tính. Bệnh nhân bị nhiễm HDV có thể được chỉ định điều trị bằng thuốc ví dụ như: Pegylated interferon alpha, Myrcludex B","Ăn uống ngủ nghỉ điều độ, vận động hợp lý, kiêng rượu bia thuốc lá chất kích thích, thận trọng khi điều trị với thuốc và luôn giữ cho thể trạng luôn trong trạng thái tốt nhất");
insert into benh(name, dieu_tri, loi_khuyen) values("Viêm gan E","Viêm gan E thường tự giới hạn mà không cần điều trị nên nói chung bệnh nhân nhiễm HEV không cần được nhập viện. Tuy nhiên, việc nhập viện là cần thiết đối với những người bị viêm gan virus E tối cấp và việc nhập viện cũng cần được xem xét đối với phụ nữ mang thai có triệu chứng nhiễm HEV","Ăn uống ngủ nghỉ điều độ, ăn chin uống sôi, không ăn các sản phẩm đồ ăn không rõ nguồn gốc, vận động hợp lý, kiêng rượu bia thuốc lá chất kích thích, thận trọng khi điều trị với thuốc và luôn giữ cho thể trạng luôn trong trạng thái tốt nhất");
