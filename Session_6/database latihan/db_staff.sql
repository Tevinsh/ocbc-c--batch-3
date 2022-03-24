-- a. buat database baru dengan nama staff
create database db_staff;

-- b. buat tabel staff
use db_staff;
create table data_staff (
	nik int primary key,
	nama varchar(50),
	alamat varchar(200),
	handphone varchar(15)
);


-- c.Masukkan data ke dalam table data_staff sesuai dengan tabel diatas
insert into data_staff (nik,nama,alamat,handphone)
values 
(091283,'nini','jl mangga','08165263523');

-- d. Masukkan lebih dari 1 data ke dalam tabel data masih dalam tabel diatas (10)
insert into data_staff (nik,nama,alamat,handphone)
values 
(394857,'tini','jl mangga','08165263523'),
(938434,'cucun','jl mangga','08165263523'),
(293844,'bibi','jl mangga','08165263523'),
(394884,'didi','jl mangga','08165263523');

-- e.Tambahkan kolom baru pada tabel data_staff yaitu joindate sekaligus masukan 1 data kedalam data_staff
alter table data_staff add joindate datetime null;


-- f.Tampilkan 2 data SQL kalian sekarang
describe data_staff;
select * from data_staff limit 2;

-- g. Tampilkan 3 data SQL kalian sekarang
select * from data_staff limit 3;

-- H.Buat tabel baru staffoutsource dengan isi yang sama seperti data staff
create table staffoutsource (
	nik int primary key,
	nama varchar(50),
	alamat varchar(200),
	handphone varchar(15),
	joindate datetime null
);
-- i. Masukkan 10 data baru ke tabel staffoutsource 
insert into staffoutsource 
values
(091283,'nini','jl mangga','08165263523',now()),
(394857,'tini','jl mangga','08165263523',now()),
(938434,'cucun','jl mangga','08165263523',now()),
(293844,'bibi','jl mangga','08165263523',now()),
(394884,'didi','jl mangga','08165263523',now()),
(454366,'bayu','jl mangga','08165263523',now()),
(234343,'jaya','jl mangga','08165263523',now()),
(234525,'bima','jl mangga','08165263523',now()),
(234566,'surya','jl mangga','08165263523',now()),
(123345,'adi','jl mangga','08165263523',now());

update data_staff set joindate = '2015-11-05 14:29:36';
update staffoutsource set joindate = '2015-11-05 14:29:36';
delete from staffoutsource;

insert into data_staff 
values
(10298,'test','jl jaya','088888888',null);

-- j. Tampilkan data pada 2 Tabel yang sudah kalian buat dengan joindate yang sama

select * from data_staff join staffoutsource on 
data_staff.nama = staffoutsource.nama
where data_staff.joindate = staffoutsource.joindate;

-- k. Tampilkan seluruh data sebelah kanan yang sama pada table staff outsource
select * from data_staff a right join staffoutsource b on a.nama = b.nama;

-- l. Tampilkan seluruh data staff sebelah kiri yang punya nilai tidak sama akan bernilai null

select * from data_staff a left join staffoutsource b on a.nama = b.nama;

-- m. Tampilkan seluruh data antara 2 tabel baik itu tidak punysa kesamaan dan bernilai null

select * from data_staff a full join staffoutsource b on a.nama = b.nama;

select * from data_staff a right join staffoutsource b on a.nama = b.nama
union
select * from data_staff a left join staffoutsource b on a.nama = b.nama;





