-- Create the test database
CREATE DATABASE SmartCA;
GO
USE SmartCA;
EXEC sys.sp_cdc_enable_db;

CREATE TABLE SmartCA.dbo.Table_PAK (
	Id int IDENTITY(1,1) NOT NULL,
	PAK_Number nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tanggal datetime NOT NULL,
	Pengajuan_Kredit int NOT NULL,
	Pengajuan_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Employee_Id int NOT NULL,
	Employee_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Employee_Npp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Status_Id int NOT NULL,
	Status_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Nama_Badan_Usaha nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unit_Id int NOT NULL,
	Unit_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedBy_Id int NOT NULL,
	CreatedBy_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedTime datetime NOT NULL,
	UpdatedBy_Id int NOT NULL,
	UpdatedBy_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UpdatedTime datetime NOT NULL,
	Jenis_PAK nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Segmen_Id int DEFAULT 0 NOT NULL,
	Segmen_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Type_Id int DEFAULT 0 NOT NULL,
	Renewal_Type_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BadanHukum_Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BadanHukum_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Industry_Based nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Industry_Template_Id int DEFAULT 0 NOT NULL,
	Industry_Template_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tanggal_FinishPAK datetime NULL,
	Unit_PAK_Number nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDelete bit DEFAULT 0 NOT NULL,
	EmployeeRole_Id int DEFAULT 0 NOT NULL,
	EmployeeRole_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interim_Type_Id int DEFAULT 0 NOT NULL,
	Interim_Type_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jenis_PAK_Id int DEFAULT 0 NOT NULL,
	CONSTRAINT [PK_dbo.Table_PAK] PRIMARY KEY (Id)
);
INSERT INTO SmartCA.dbo.Table_PAK (PAK_Number,Tanggal,Pengajuan_Kredit,Pengajuan_Name,Employee_Id,Employee_Name,Employee_Npp,Status_Id,Status_Name,Nama_Badan_Usaha,Unit_Id,Unit_Name,CreatedBy_Id,CreatedBy_Name,CreatedTime,UpdatedBy_Id,UpdatedBy_Name,UpdatedTime,Jenis_PAK,Segmen_Id,Segmen_Name,Renewal_Type_Id,Renewal_Type_Name,BadanHukum_Id,BadanHukum_Name,Industry_Based,Industry_Template_Id,Industry_Template_Name,Tanggal_FinishPAK,Unit_PAK_Number,IsDelete,EmployeeRole_Id,EmployeeRole_Name,Interim_Type_Id,Interim_Type_Name,Jenis_PAK_Id) VALUES
	 ('00201909002827','2019-09-23 00:00:00.0',2,'Group',1060,'PAMBAYUN RIZAL BACHTIAR','821251',2,'On Progress','ANEKA WARNA SEMESTA',45,'KCU BUKITTINGGI',1058,'KANIASARI KUSUMAHNEGARA','2019-09-23 10:06:56.0',1,'Administrator System','2019-11-01 17:31:07.963','Baru',1,'Middle',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002828','2019-09-23 00:00:00.0',2,'Group',2410,'CYNTIA MAHARANI WARMAN','56095',1,'Save As Draft','1ST TRY SMART CA',45,'KCU BUKITTINGGI',2410,'CYNTIA MAHARANI WARMAN','2019-09-23 11:00:48.0',1053,'ANDRI RONALDO','2019-10-01 17:46:59.317','Renewal',2,'Small A',1,'Complex','1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,2),
	 ('01201909002832','2019-09-23 00:00:00.0',2,'Group',2408,'ADNIN MARWAH','57389',1,'Save As Draft','marwah',45,'KCU BUKITTINGGI',2408,'ADNIN MARWAH','2019-09-23 11:08:22.0',2408,'ADNIN MARWAH','2019-09-23 14:17:23.773','Baru',2,'Small A',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002831','2019-09-23 00:00:00.0',1,'Individu',2406,'JILIWOSY SALAINTI','57397',1,'Save As Draft','MoA',45,'KCU BUKITTINGGI',2406,'JILIWOSY SALAINTI','2019-09-23 11:09:14.84',2406,'JILIWOSY SALAINTI','2019-09-23 13:49:02.617','Baru',2,'Small A',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002833','2019-09-23 00:00:00.0',1,'Individu',2409,'FADILLA PRIMARIADEWI','57396',1,'Save As Draft','SEGAR SEKALI ',45,'KCU BUKITTINGGI',2409,'FADILLA PRIMARIADEWI','2019-09-23 11:10:31.0',2409,'FADILLA PRIMARIADEWI','2019-09-23 11:37:52.14','Baru',2,'Small A',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002834','2019-09-23 00:00:00.0',2,'Group',2405,'GLORYAN DANIEL NAPITUPULU','57391',1,'Save As Draft','Bangun Teknika',45,'KCU BUKITTINGGI',2405,'GLORYAN DANIEL NAPITUPULU','2019-09-23 11:11:51.323',2405,'GLORYAN DANIEL NAPITUPULU','2019-09-23 11:26:36.903','Baru',2,'Small A',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002830','2019-09-23 00:00:00.0',1,'Individu',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','57395',1,'Save As Draft','Budiman',45,'KCU BUKITTINGGI',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','2019-09-23 11:13:46.977',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','2019-09-23 11:19:48.637','Baru',2,'Small A',0,NULL,'98','Perorangan','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002835','2019-09-23 00:00:00.0',1,'Individu',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','57395',1,'Save As Draft','Budiman',45,'KCU BUKITTINGGI',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','2019-09-23 11:21:03.683',2407,'ADITYA RAHMI MAGHFIRA BATUNANGGAR','2019-09-23 11:39:27.047','Renewal',2,'Small A',1,'Complex','98','Perorangan','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,2),
	 ('01201909002837','2019-09-23 00:00:00.0',1,'Individu',2409,'FADILLA PRIMARIADEWI','57396',1,'Save As Draft','CAHAYA ILAHI',45,'KCU BUKITTINGGI',2409,'FADILLA PRIMARIADEWI','2019-09-23 11:38:38.0',2409,'FADILLA PRIMARIADEWI','2019-09-23 14:10:06.57','Baru',3,'Small B',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1),
	 ('01201909002839','2019-09-23 00:00:00.0',2,'Group',2405,'GLORYAN DANIEL NAPITUPULU','57391',1,'Save As Draft','Reka Optima',45,'KCU BUKITTINGGI',2405,'GLORYAN DANIEL NAPITUPULU','2019-09-23 11:38:57.0',2312,'NIRMALA SARI','2020-02-10 10:28:41.137','Baru',3,'Small B',0,NULL,'1','PT','Data Lama',1,'Generic',NULL,NULL,0,0,NULL,0,NULL,1);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Table_PAK', @role_name = NULL, @supports_net_changes = 0;
CREATE TABLE SmartCA.dbo.Table_AnalisisBisnisNasabah_InfoDebitur (
	Id int IDENTITY(1,1) NOT NULL,
	PAK_Id int NOT NULL,
	PAK_Child_Id int NOT NULL,
	PAK_Number nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Nama_Debitur nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Alamat_Kantor nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Bidang_Usaha nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Alamat_Kantor_Operasional nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IRR_Id int NULL,
	IRR_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CCR_Id int NULL,
	CCR_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CRR_Id int NULL,
	CRR_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tahun_Berdiri datetime NULL,
	Debitur_Sejak datetime NULL,
	Nasabah_Sejak datetime NULL,
	CIF nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tgl_Pemberian_Kredit_Awal datetime NULL,
	Limit_Pemberian_Kredit_Awal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unit_Pemberi_Kredit_Awal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Keterangan_Pemberian_Kredit_Awal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Key_Person nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	KeyPerson_Nasabah_Sejak datetime NULL,
	KeyPerson_Debitur_Sejak datetime NULL,
	Persen_KeyPerson_Kepemilikan_Saham float NULL,
	Pengaruh_Signifikan_KeyPerson nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reputasi_KeyPerson nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Grup_Usaha nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Grup_Jenis_Usaha nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Grup_Nasabah_Sejak datetime NULL,
	Grup_Debitur_Sejak datetime NULL,
	Persen_Grup_Kepemilikan_Saham float NULL,
	Pengaruh_Signifikan_Grup nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedTime datetime NULL,
	UpdatedTime datetime NULL,
	CreatedBy_Id int NULL,
	UpdatedBy_Id int NULL,
	CONSTRAINT [PK_dbo.Table_AnalisisBisnisNasabah_InfoDebitur] PRIMARY KEY (Id)
);
INSERT INTO SmartCA.dbo.Table_AnalisisBisnisNasabah_InfoDebitur (PAK_Id,PAK_Child_Id,PAK_Number,Nama_Debitur,Alamat_Kantor,Bidang_Usaha,Alamat_Kantor_Operasional,IRR_Id,IRR_Name,CCR_Id,CCR_Name,CRR_Id,CRR_Name,Tahun_Berdiri,Debitur_Sejak,Nasabah_Sejak,CIF,Tgl_Pemberian_Kredit_Awal,Limit_Pemberian_Kredit_Awal,Unit_Pemberi_Kredit_Awal,Keterangan_Pemberian_Kredit_Awal,Key_Person,KeyPerson_Nasabah_Sejak,KeyPerson_Debitur_Sejak,Persen_KeyPerson_Kepemilikan_Saham,Pengaruh_Signifikan_KeyPerson,Reputasi_KeyPerson,Grup_Usaha,Grup_Jenis_Usaha,Grup_Nasabah_Sejak,Grup_Debitur_Sejak,Persen_Grup_Kepemilikan_Saham,Pengaruh_Signifikan_Grup,CreatedTime,UpdatedTime,CreatedBy_Id,UpdatedBy_Id) VALUES
	 (66,0,NULL,NULL,'Data Belum Di Input Pada Form FIN',NULL,'Data Belum Di Input Pada Form FIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-06 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-06 13:06:01.977','2019-08-06 13:06:01.983',1043,1043),
	 (38,0,NULL,NULL,'test','test','test',6,'4',2,'Tidak Dapat Diterapkan',5,'3','2019-08-30 00:00:00.0','2019-08-12 00:00:00.0','2019-08-14 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-12 16:17:26.0','2019-08-14 11:00:02.710',1060,1053),
	 (76,0,NULL,NULL,'wer','23r','234',NULL,NULL,NULL,NULL,NULL,NULL,'2019-09-20 00:00:00.0','2019-09-12 00:00:00.0','2019-09-20 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-09-02 00:08:52.207',NULL,1060),
	 (1092,0,NULL,NULL,'JL RAYA INDONESIA','PERDAGANGAN KAIN','JL RAYA INDONESIA',4,'2',4,'2',4,'2','2000-01-01 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ANTONIO','2005-01-01 00:00:00.0',NULL,80.0,NULL,'Positif',NULL,NULL,NULL,NULL,NULL,'Tidak Dapat Diterapkan',NULL,'2019-09-23 10:54:46.493',NULL,1059),
	 (1090,1322,NULL,NULL,'Jl Sokearno Hatta 1','Logistik','Jl Sokearno Hatta 1',4,'2',4,'2',3,'1','2010-07-23 00:00:00.0','2015-10-22 00:00:00.0','2015-10-22 00:00:00.0','50151515',NULL,NULL,NULL,NULL,'Acong','2015-07-17 00:00:00.0','2014-06-11 00:00:00.0',55.0,'Tidak','Enhance due Dilligence',NULL,NULL,NULL,NULL,NULL,'Tidak',NULL,'2019-09-23 11:48:03.227',NULL,2094),
	 (1091,0,NULL,NULL,'Serang','Semen','Kebon Jeruk',5,'3',5,'3',5,'3','2014-08-18 00:00:00.0','2015-09-30 00:00:00.0','2015-09-30 00:00:00.0','1234567',NULL,NULL,NULL,NULL,'Dodod','2015-08-30 00:00:00.0','2015-08-30 00:00:00.0',25.0,'Ya','Enhance due Dilligence',NULL,NULL,'2015-08-30 00:00:00.0',NULL,NULL,'Ya',NULL,'2019-09-23 11:24:46.930',NULL,2130),
	 (1094,1323,NULL,NULL,NULL,NULL,NULL,4,'2',4,'2',4,'2','2010-08-17 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Dedi','2014-06-11 00:00:00.0',NULL,75.0,NULL,NULL,'Baru Saja','Perdagangan/ Perdagangan Makanan Olahan','2010-02-10 00:00:00.0',NULL,0.0,'Tidak',NULL,'2019-09-23 14:07:22.587',NULL,1056),
	 (1095,1325,NULL,NULL,'Jl. Cipanas No.168 RT.04 RW.01 Desa Cangkuang Kec.Rancaekek Kab.Bandung (CV.Master Laundry)','Jasa- Jasa Dunia Usaha','Jl. Cipanas No.168 RT.04 RW.01 Desa Cangkuang Kec.Rancaekek Kab.Bandung (CV.Master Laundry)',5,'3',5,'3',5,'3','2006-05-01 00:00:00.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Riska Supyansyah',NULL,NULL,0.0,NULL,NULL,'PT. Avantex Denim Indo','Perdagangan Besar',NULL,NULL,0.0,NULL,NULL,'2019-09-23 12:01:16.227',NULL,1061),
	 (1098,1333,NULL,NULL,'jakarta pusat','perdagangan barbie fulla','bsd',5,'3',4,'2',5,'3','2014-04-19 00:00:00.0','2019-08-15 00:00:00.0','2014-04-19 00:00:00.0','12365478987',NULL,NULL,NULL,NULL,'adnin','2000-02-01 00:00:00.0','2019-09-23 00:00:00.0',51.0,NULL,NULL,'PT. Putri','perdagangan barbie ','1997-04-19 00:00:00.0','2010-04-30 00:00:00.0',20.0,NULL,NULL,'2019-09-23 11:46:33.187',NULL,2408),
	 (1103,0,NULL,NULL,'123','Transportasi Darat','123',5,'3',5,'3',5,'3','2010-07-28 00:00:00.0',NULL,NULL,'123',NULL,NULL,NULL,NULL,'Budiman',NULL,NULL,100.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-09-23 11:39:27.000',NULL,2407);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Table_AnalisisBisnisNasabah_InfoDebitur', @role_name = NULL, @supports_net_changes = 0;


CREATE TABLE SmartCA.dbo.Table_FIN (
	Id int IDENTITY(1,1) NOT NULL,
	PAK_Id int NOT NULL,
	PAK_Number nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Bidang_Usaha nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Alamat_Pusat nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Alamat_Cabang nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tahun_Didirikan datetime NULL,
	Lama_Beroperasi nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Debitur_BNI_Sejak datetime NULL,
	Lama_Menjadi_Debitur bigint NULL,
	Uraian_Usaha_Lingkungan_Eksternal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Uraian_Kompetisi_Industri nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Company_Profile nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Struktur_Kepemilikan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Bisnis nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Produk nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Pelanggan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Supplier nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Ketenagakerjaan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ringkasan_Hubungan_Istimewa nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedTime datetime NULL,
	UpdatedTime datetime NULL,
	CreatedBy_Id int NULL,
	UpdatedBy_Id int NULL,
	Dipersiapkan_Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dipersiapkan_NPP nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dipersiapkan_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dipersiapkan_Jabatan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Direview_Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Direview_NPP nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Direview_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Direview_Jabatan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PAK_Child_Id int DEFAULT 0 NOT NULL,
	CONSTRAINT [PK_dbo.Table_FIN] PRIMARY KEY (Id)
);
INSERT INTO SmartCA.dbo.Table_FIN (PAK_Id,PAK_Number,Bidang_Usaha,Alamat_Pusat,Alamat_Cabang,Tahun_Didirikan,Lama_Beroperasi,Debitur_BNI_Sejak,Lama_Menjadi_Debitur,Uraian_Usaha_Lingkungan_Eksternal,Uraian_Kompetisi_Industri,Ringkasan_Company_Profile,Ringkasan_Struktur_Kepemilikan,Ringkasan_Bisnis,Ringkasan_Produk,Ringkasan_Pelanggan,Ringkasan_Supplier,Ringkasan_Ketenagakerjaan,Ringkasan_Hubungan_Istimewa,CreatedTime,UpdatedTime,CreatedBy_Id,UpdatedBy_Id,Dipersiapkan_Id,Dipersiapkan_NPP,Dipersiapkan_Name,Dipersiapkan_Jabatan,Direview_Id,Direview_NPP,Direview_Name,Direview_Jabatan,PAK_Child_Id) VALUES
	 (4299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-10 08:54:08.863','2020-11-10 08:54:08.863',2313,2313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-10 09:22:48.947','2020-11-10 09:22:48.947',2313,2313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4315,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tes','tes','tes','tes','tes','tes','tes','tes','tes','tes','2020-11-10 11:36:43.247','2020-11-10 11:36:43.247',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tes','tes','tes','tes','tes','tes','tes','tes','tes','tes','2020-11-10 11:36:43.247','2020-11-10 11:36:43.247',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4317,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tes','tessssssssssssssssssssssssssssssssssssssssss','sssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss',NULL,NULL,NULL,'2020-11-10 13:25:26.54','2020-11-10 13:25:26.54',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4318,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tes','tessssssssssssssssssssssssssssssssssssssssss','sssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss','sssssssssssssssssss',NULL,NULL,NULL,'2020-11-10 13:25:26.54','2020-11-10 13:25:26.54',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (2241,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sssssssssssssss','2020-11-10 14:55:46.027','2020-11-10 14:55:46.027',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (4319,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sssssssssssssss','2020-11-10 14:55:46.027','2020-11-10 14:55:46.027',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
	 (5319,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DDDDDDDDDDDDD','2020-11-10 17:00:50.383','2020-11-10 17:00:50.383',2312,2312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Table_FIN', @role_name = NULL, @supports_net_changes = 0;
CREATE TABLE SmartCA.dbo.Table_AnalisisKeuangan_AuditorEksternal_InfoAuditordanAnalisisLaporan (
	Id int IDENTITY(1,1) NOT NULL,
	PAK_Id int NOT NULL,
	PAK_Child_Id int NOT NULL,
	PAK_Number nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Audit_Id int NULL,
	Is_Audit_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penerbit_Laporan_Keuangan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Rekanan_BNI_Id int NULL,
	Is_Rekanan_BNI_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Klasifikasi_Id int NULL,
	Klasifikasi_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jatuh_Tempo datetime NULL,
	Verifikasi_KAP_Id int NULL,
	Verifikasi_KAP_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penjelasan_Verifikasi_Auditor nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pengecualian_Akun_Opini_Id int NULL,
	Pengecualian_Akun_Opini_Auditor_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Diskusi_Auditor_Debitur_Id int NULL,
	Is_Diskusi_Auditor_Debitur_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Nomor_Lampiran_Akun_Dikecualikan_Id int NULL,
	Nomor_Lampiran_Akun_Dikecualikan_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Pengecualian_Konsisten_Id int NULL,
	Is_Pengecualian_Konsisten_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penyebab_Utama_Pengecualian_Konsisten nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Nomor_Lampiran_Pengecualian_Konsisten_Id int NULL,
	Nomor_Lampiran_Pengecualian_Konsisten_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Kesimpulan_Analisis_Opini_Auditor nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedTime datetime NULL,
	UpdatedTime datetime NULL,
	CreatedBy_Id int NULL,
	UpdatedBy_Id int NULL,
	Periode_Laporan_Audit nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Opini_Id int NULL,
	Opini_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Periode_Laporan_AuditY2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_AuditY2_Id int NULL,
	Is_AuditY2_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penerbit_Laporan_KeuanganY2 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpiniY2_Id int NULL,
	OpiniY2_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Rekanan_BNIY2_Id int NULL,
	Is_Rekanan_BNIY2_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	KlasifikasiY2_Id int NULL,
	KlasifikasiY2_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jatuh_TempoY2 datetime NULL,
	Periode_Laporan_AuditY1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_AuditY1_Id int NULL,
	Is_AuditY1_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penerbit_Laporan_KeuanganY1 nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpiniY1_Id int NULL,
	OpiniY1_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Rekanan_BNIY1_Id int NULL,
	Is_Rekanan_BNIY1_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	KlasifikasiY1_Id int NULL,
	KlasifikasiY1_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jatuh_TempoY1 datetime NULL,
	Periode_Laporan_AuditYtd nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_AuditYtd_Id int NULL,
	Is_AuditYtd_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penerbit_Laporan_KeuanganYtd nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpiniYtd_Id int NULL,
	OpiniYtd_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Rekanan_BNIYtd_Id int NULL,
	Is_Rekanan_BNIYtd_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	KlasifikasiYtd_Id int NULL,
	KlasifikasiYtd_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jatuh_TempoYtd datetime NULL,
	Attachment_Akun_Dikecualikan nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Attachment_Pengecualian_Konsisten nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_dbo.Table_AnalisisKeuangan_AuditorEksternal_InfoAuditordanAnalisisLaporan] PRIMARY KEY (Id)
);
INSERT INTO SmartCA.dbo.Table_AnalisisKeuangan_AuditorEksternal_InfoAuditordanAnalisisLaporan (PAK_Id,PAK_Child_Id,PAK_Number,Is_Audit_Id,Is_Audit_Name,Penerbit_Laporan_Keuangan,Is_Rekanan_BNI_Id,Is_Rekanan_BNI_Name,Klasifikasi_Id,Klasifikasi_Name,Jatuh_Tempo,Verifikasi_KAP_Id,Verifikasi_KAP_Name,Penjelasan_Verifikasi_Auditor,Pengecualian_Akun_Opini_Id,Pengecualian_Akun_Opini_Auditor_Name,Is_Diskusi_Auditor_Debitur_Id,Is_Diskusi_Auditor_Debitur_Name,Nomor_Lampiran_Akun_Dikecualikan_Id,Nomor_Lampiran_Akun_Dikecualikan_Name,Is_Pengecualian_Konsisten_Id,Is_Pengecualian_Konsisten_Name,Penyebab_Utama_Pengecualian_Konsisten,Nomor_Lampiran_Pengecualian_Konsisten_Id,Nomor_Lampiran_Pengecualian_Konsisten_Name,Kesimpulan_Analisis_Opini_Auditor,CreatedTime,UpdatedTime,CreatedBy_Id,UpdatedBy_Id,Periode_Laporan_Audit,Opini_Id,Opini_Name,Periode_Laporan_AuditY2,Is_AuditY2_Id,Is_AuditY2_Name,Penerbit_Laporan_KeuanganY2,OpiniY2_Id,OpiniY2_Name,Is_Rekanan_BNIY2_Id,Is_Rekanan_BNIY2_Name,KlasifikasiY2_Id,KlasifikasiY2_Name,Jatuh_TempoY2,Periode_Laporan_AuditY1,Is_AuditY1_Id,Is_AuditY1_Name,Penerbit_Laporan_KeuanganY1,OpiniY1_Id,OpiniY1_Name,Is_Rekanan_BNIY1_Id,Is_Rekanan_BNIY1_Name,KlasifikasiY1_Id,KlasifikasiY1_Name,Jatuh_TempoY1,Periode_Laporan_AuditYtd,Is_AuditYtd_Id,Is_AuditYtd_Name,Penerbit_Laporan_KeuanganYtd,OpiniYtd_Id,OpiniYtd_Name,Is_Rekanan_BNIYtd_Id,Is_Rekanan_BNIYtd_Name,KlasifikasiYtd_Id,KlasifikasiYtd_Name,Jatuh_TempoYtd,Attachment_Akun_Dikecualikan,Attachment_Pengecualian_Konsisten) VALUES
	 (0,54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-01 18:15:54.263','2019-08-01 18:15:54.267',1053,1053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (0,56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-01 18:17:10.313','2019-08-01 18:17:10.313',1053,1053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (0,57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-02 13:20:12.42',NULL,1053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (66,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,'1111111111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-06 14:31:15.447',NULL,1053,'2016',NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (63,0,NULL,NULL,NULL,'oke',NULL,'3',NULL,'3','2019-08-28 00:00:00.0',2,NULL,'oke',2,'3',NULL,NULL,3,NULL,2,NULL,'oke lalala',2,NULL,'oke la lalaa',NULL,'2019-08-15 18:56:50.877',NULL,1060,'2016',NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (69,0,NULL,NULL,NULL,'keu',NULL,'3',NULL,'5','2019-08-16 00:00:00.0',3,NULL,'oke',4,'4',2,NULL,2,NULL,3,NULL,'asda',8,NULL,'oke',NULL,'2019-08-07 09:02:58.487',NULL,1048,'2016',NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (0,1059,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-07 09:32:00.737','2019-08-07 09:32:00.747',1053,1053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (70,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-15 19:59:07.933',NULL,1060,'2016',NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (38,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-15 23:47:15.577',NULL,1053,NULL,NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	 (74,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-02-27 11:04:44.557',NULL,1,NULL,NULL,NULL,'2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Table_AnalisisKeuangan_AuditorEksternal_InfoAuditordanAnalisisLaporan', @role_name = NULL, @supports_net_changes = 0;

CREATE TABLE SmartCA.dbo.Table_AnalisisResiko_RatingDebitur (
	Id int IDENTITY(1,1) NOT NULL,
	PAK_Id int NOT NULL,
	PAK_Child_Id int NOT NULL,
	Rating_IRR_Skor_Id int NOT NULL,
	Rating_IRR_Skor_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rating_CRR_Skor_Id int NOT NULL,
	Rating_CRR_Skor_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rating_JaminanAkhir_Skor_Id int NOT NULL,
	Rating_JaminanAkhir_Skor_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rating_CCR_Skor_Id int NOT NULL,
	Rating_CCR_Skor_Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penjelasan_IRR nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penjelasan_CRR nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penjelasan_JaminanAkhir nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penjelasan_CCR nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UpdatedTime datetime NULL,
	CreatedTime datetime NULL,
	CreatedBy_Id int NULL,
	UpdatedBy_Id int NULL,
	CONSTRAINT [PK_dbo.Table_AnalisisResiko_RatingDebitur] PRIMARY KEY (Id)
);
INSERT INTO SmartCA.dbo.Table_AnalisisResiko_RatingDebitur (PAK_Id,PAK_Child_Id,Rating_IRR_Skor_Id,Rating_IRR_Skor_Name,Rating_CRR_Skor_Id,Rating_CRR_Skor_Name,Rating_JaminanAkhir_Skor_Id,Rating_JaminanAkhir_Skor_Name,Rating_CCR_Skor_Id,Rating_CCR_Skor_Name,Penjelasan_IRR,Penjelasan_CRR,Penjelasan_JaminanAkhir,Penjelasan_CCR,UpdatedTime,CreatedTime,CreatedBy_Id,UpdatedBy_Id) VALUES
	 (1147,0,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-10-15 16:59:43.74','2020-10-15 16:59:43.74',1053,1053),
	 (4296,0,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-10-15 16:59:43.74','2020-10-15 16:59:43.74',1053,1053),
	 (4297,0,0,NULL,0,NULL,5,'3',0,NULL,'tes','tes','tes','tes','2020-11-06 13:40:05.537','2020-11-06 13:39:41.0',2312,2312),
	 (0,2374,0,NULL,0,NULL,7,'5',0,NULL,'tes','e','e','e','2020-11-06 13:43:39.417','2020-11-06 13:43:39.417',2312,2312),
	 (0,2375,0,NULL,0,NULL,0,NULL,0,NULL,'t','t','t','t','2020-11-06 13:51:58.413','2020-11-06 13:51:58.413',2312,2312),
	 (4307,0,0,NULL,0,NULL,5,'3',0,NULL,'E','E','E','E','2020-11-06 13:55:02.443','2020-11-06 13:55:02.443',2312,2312),
	 (4301,0,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-11-10 09:05:45.903','2020-11-09 13:43:37.0',2313,2313),
	 (0,2376,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-11-09 14:31:00.077','2020-11-09 14:31:00.077',2312,2312),
	 (4299,0,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-11-10 08:55:49.117','2020-11-10 08:55:49.117',2313,2313),
	 (4313,0,0,NULL,0,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,'2020-11-10 09:28:04.847','2020-11-10 09:28:04.847',2313,2313);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'Table_AnalisisResiko_RatingDebitur', @role_name = NULL, @supports_net_changes = 0;
-- Create and populate our products using a single insert with many rows
CREATE TABLE products (
  id INTEGER IDENTITY(101,1) NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(512),
  weight FLOAT
);
INSERT INTO products(name,description,weight)
  VALUES ('scooter','Small 2-wheel scooter',3.14);
INSERT INTO products(name,description,weight)
  VALUES ('car battery','12V car battery',8.1);
INSERT INTO products(name,description,weight)
  VALUES ('12-pack drill bits','12-pack of drill bits with sizes ranging from #40 to #3',0.8);
INSERT INTO products(name,description,weight)
  VALUES ('hammer','12oz carpenter''s hammer',0.75);
INSERT INTO products(name,description,weight)
  VALUES ('hammer','14oz carpenter''s hammer',0.875);
INSERT INTO products(name,description,weight)
  VALUES ('hammer','16oz carpenter''s hammer',1.0);
INSERT INTO products(name,description,weight)
  VALUES ('rocks','box of assorted rocks',5.3);
INSERT INTO products(name,description,weight)
  VALUES ('jacket','water resistent black wind breaker',0.1);
INSERT INTO products(name,description,weight)
  VALUES ('spare tire','24 inch spare tire',22.2);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'products', @role_name = NULL, @supports_net_changes = 0;
-- Create and populate the products on hand using multiple inserts
CREATE TABLE products_on_hand (
  product_id INTEGER NOT NULL PRIMARY KEY,
  quantity INTEGER NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO products_on_hand VALUES (101,3);
INSERT INTO products_on_hand VALUES (102,8);
INSERT INTO products_on_hand VALUES (103,18);
INSERT INTO products_on_hand VALUES (104,4);
INSERT INTO products_on_hand VALUES (105,5);
INSERT INTO products_on_hand VALUES (106,0);
INSERT INTO products_on_hand VALUES (107,44);
INSERT INTO products_on_hand VALUES (108,2);
INSERT INTO products_on_hand VALUES (109,5);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'products_on_hand', @role_name = NULL, @supports_net_changes = 0;
-- Create some customers ...
CREATE TABLE customers (
  id INTEGER IDENTITY(1001,1) NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE
);
INSERT INTO customers(first_name,last_name,email)
  VALUES ('Sally','Thomas','sally.thomas@acme.com');
INSERT INTO customers(first_name,last_name,email)
  VALUES ('George','Bailey','gbailey@foobar.com');
INSERT INTO customers(first_name,last_name,email)
  VALUES ('Edward','Walker','ed@walker.com');
INSERT INTO customers(first_name,last_name,email)
  VALUES ('Anne','Kretchmar','annek@noanswer.org');
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'customers', @role_name = NULL, @supports_net_changes = 0;
-- Create some very simple orders
CREATE TABLE orders (
  id INTEGER IDENTITY(10001,1) NOT NULL PRIMARY KEY,
  order_date DATE NOT NULL,
  purchaser INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  FOREIGN KEY (purchaser) REFERENCES customers(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO orders(order_date,purchaser,quantity,product_id)
  VALUES ('16-JAN-2016', 1001, 1, 102);
INSERT INTO orders(order_date,purchaser,quantity,product_id)
  VALUES ('17-JAN-2016', 1002, 2, 105);
INSERT INTO orders(order_date,purchaser,quantity,product_id)
  VALUES ('19-FEB-2016', 1002, 2, 106);
INSERT INTO orders(order_date,purchaser,quantity,product_id)
  VALUES ('21-FEB-2016', 1003, 1, 107);
EXEC sys.sp_cdc_enable_table @source_schema = 'dbo', @source_name = 'orders', @role_name = NULL, @supports_net_changes = 0;
GO
