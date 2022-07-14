DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY,
    ten_khach_hang VARCHAR(55) NOT NULL,
    ngay_sinh DATE
);

CREATE TABLE don_dat_hang (
    ma_dat_hang INT PRIMARY KEY,
    ma_khach_hang INT NOT NULL,
    ngay_dat_hang DATE NOT NULL,
    tong_tien INT NOT NULL,
    FOREIGN KEY (ma_khach_hang)
        REFERENCES khach_hang (ma_khach_hang)
);

CREATE TABLE san_pham (
    ma_san_pham INT PRIMARY KEY,
    ten_san_pham VARCHAR(30) NOT NULL,
    gia_san_pham INT NOT NULL
);

CREATE TABLE chi_tiet_hoa_don (
    ma_dat_hang INT NOT NULL,
    ma_san_pham INT NOT NULL,
    so_luong INT NOT NULL,
    PRIMARY KEY (ma_dat_hang , ma_san_pham),
    FOREIGN KEY (ma_dat_hang)
        REFERENCES don_dat_hang (ma_dat_hang),
    FOREIGN KEY (ma_san_pham)
        REFERENCES san_pham (ma_san_pham)
);