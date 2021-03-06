USE [master]
GO
/****** Object:  Database [duan1]    Script Date: 12/6/2021 9:48:51 AM ******/
CREATE DATABASE [duan1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'duan1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\duan1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'duan1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\duan1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [duan1] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [duan1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [duan1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [duan1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [duan1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [duan1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [duan1] SET ARITHABORT OFF 
GO
ALTER DATABASE [duan1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [duan1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [duan1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [duan1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [duan1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [duan1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [duan1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [duan1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [duan1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [duan1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [duan1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [duan1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [duan1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [duan1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [duan1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [duan1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [duan1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [duan1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [duan1] SET  MULTI_USER 
GO
ALTER DATABASE [duan1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [duan1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [duan1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [duan1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [duan1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [duan1] SET QUERY_STORE = OFF
GO
USE [duan1]
GO
/****** Object:  Table [dbo].[cauhoi]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cauhoi](
	[maCauHoi] [nvarchar](15) NOT NULL,
	[noidung] [nvarchar](150) NULL,
	[made] [nvarchar](15) NULL,
	[linkDinhKem] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[maCauHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[danhSachThi]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhSachThi](
	[masinhvien] [nvarchar](10) NULL,
	[made] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dapAn]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dapAn](
	[maCauHoi] [nvarchar](15) NULL,
	[noidung] [nvarchar](150) NULL,
	[ketqua] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[De]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[De](
	[Made] [nvarchar](15) NOT NULL,
	[maMon] [nvarchar](10) NULL,
	[kythi] [nvarchar](20) NULL,
	[magiangvien] [nvarchar](10) NULL,
	[thoigian] [int] NULL,
	[socauhoi] [int] NULL,
	[password] [nvarchar](50) NULL,
	[ngayMo] [date] NULL,
	[ngayDong] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Made] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[diem]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[diem](
	[idDiem] [int] IDENTITY(1,1) NOT NULL,
	[maSinhVien] [nvarchar](10) NULL,
	[maMon] [nvarchar](10) NULL,
	[diemChuyenCan] [float] NULL,
	[diemGiuaKi] [float] NULL,
	[diemCuoiKi] [float] NULL,
	[trangthai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giangVien]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giangVien](
	[maGiangVien] [nvarchar](10) NOT NULL,
	[tenGiangVien] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](15) NULL,
	[ngaysinh] [date] NULL,
	[ngayvao] [date] NULL,
	[gioitinh] [bit] NULL,
	[anhDaiDien] [nvarchar](50) NULL,
	[trinhDo] [nvarchar](50) NULL,
	[cmnd] [nvarchar](20) NULL,
	[chuyenmon] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[matKhau] [nvarchar](50) NULL,
	[manv] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ky]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ky](
	[MaKy] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichGiangDay]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichGiangDay](
	[idLichGiangDay] [int] IDENTITY(1,1) NOT NULL,
	[maGiangVien] [nvarchar](10) NULL,
	[maMon] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLichGiangDay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuTruyCap]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuTruyCap](
	[masinhvien] [nvarchar](10) NULL,
	[made] [nvarchar](15) NULL,
	[thoigian] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[maLop] [nvarchar](10) NOT NULL,
	[maNganh] [nvarchar](10) NULL,
	[MaKy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LopSinhVien]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LopSinhVien](
	[idLopSinhVien] [int] IDENTITY(1,1) NOT NULL,
	[maSinhVien] [nvarchar](10) NULL,
	[maLop] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idLopSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuuTaiKhoan]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuuTaiKhoan](
	[tendangnhap] [nvarchar](50) NULL,
	[matkhau] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonCuaGiangVien]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonCuaGiangVien](
	[idMonCuaGiangVien] [int] IDENTITY(1,1) NOT NULL,
	[maGiangVien] [nvarchar](10) NULL,
	[maMon] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMonCuaGiangVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monHoc]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monHoc](
	[maMon] [nvarchar](10) NOT NULL,
	[tenMon] [nvarchar](50) NULL,
	[mota] [nvarchar](100) NULL,
	[anhDaidien] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHocCuaNganh]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHocCuaNganh](
	[idMonHocCuaNganh] [int] IDENTITY(1,1) NOT NULL,
	[maNganh] [nvarchar](10) NULL,
	[maMon] [nvarchar](10) NULL,
	[MaKy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMonHocCuaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[maNganh] [nvarchar](10) NOT NULL,
	[tenNganh] [nvarchar](100) NULL,
	[moTa] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [nvarchar](50) NOT NULL,
	[matkhau] [nvarchar](50) NULL,
	[tenNhanvien] [nvarchar](50) NULL,
	[gmail] [nvarchar](50) NULL,
	[vaitro] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sinhVien]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sinhVien](
	[maSinhVien] [nvarchar](10) NOT NULL,
	[tenSinhvien] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[ngaysinh] [date] NULL,
	[ngayNhapHoc] [date] NULL,
	[ngayTotnghiep] [date] NULL,
	[email] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[cmnd] [nvarchar](20) NULL,
	[anhdaidien] [nvarchar](50) NULL,
	[tinhtrang] [bit] NULL,
	[tenNganh] [nvarchar](100) NULL,
	[matkhau] [varchar](50) NULL,
	[manv] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cauhoi]  WITH CHECK ADD FOREIGN KEY([made])
REFERENCES [dbo].[De] ([Made])
GO
ALTER TABLE [dbo].[danhSachThi]  WITH CHECK ADD FOREIGN KEY([masinhvien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[danhSachThi]  WITH CHECK ADD FOREIGN KEY([made])
REFERENCES [dbo].[De] ([Made])
GO
ALTER TABLE [dbo].[dapAn]  WITH CHECK ADD FOREIGN KEY([maCauHoi])
REFERENCES [dbo].[cauhoi] ([maCauHoi])
GO
ALTER TABLE [dbo].[De]  WITH CHECK ADD FOREIGN KEY([magiangvien])
REFERENCES [dbo].[giangVien] ([maGiangVien])
GO
ALTER TABLE [dbo].[De]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[diem]  WITH CHECK ADD FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[giangVien]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[giangVien]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[LichGiangDay]  WITH CHECK ADD FOREIGN KEY([maGiangVien])
REFERENCES [dbo].[giangVien] ([maGiangVien])
GO
ALTER TABLE [dbo].[LichGiangDay]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LichGiangDay]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[LichSuTruyCap]  WITH CHECK ADD FOREIGN KEY([masinhvien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[LichSuTruyCap]  WITH CHECK ADD FOREIGN KEY([made])
REFERENCES [dbo].[De] ([Made])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaKy])
REFERENCES [dbo].[Ky] ([MaKy])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaKy])
REFERENCES [dbo].[Ky] ([MaKy])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([maNganh])
REFERENCES [dbo].[Nganh] ([maNganh])
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([maNganh])
REFERENCES [dbo].[Nganh] ([maNganh])
GO
ALTER TABLE [dbo].[LopSinhVien]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSinhVien]  WITH CHECK ADD FOREIGN KEY([maLop])
REFERENCES [dbo].[Lop] ([maLop])
GO
ALTER TABLE [dbo].[LopSinhVien]  WITH CHECK ADD FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[LopSinhVien]  WITH CHECK ADD FOREIGN KEY([maSinhVien])
REFERENCES [dbo].[sinhVien] ([maSinhVien])
GO
ALTER TABLE [dbo].[MonCuaGiangVien]  WITH CHECK ADD FOREIGN KEY([maGiangVien])
REFERENCES [dbo].[giangVien] ([maGiangVien])
GO
ALTER TABLE [dbo].[MonCuaGiangVien]  WITH CHECK ADD FOREIGN KEY([maGiangVien])
REFERENCES [dbo].[giangVien] ([maGiangVien])
GO
ALTER TABLE [dbo].[MonCuaGiangVien]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[MonCuaGiangVien]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([maMon])
REFERENCES [dbo].[monHoc] ([maMon])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([maNganh])
REFERENCES [dbo].[Nganh] ([maNganh])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([maNganh])
REFERENCES [dbo].[Nganh] ([maNganh])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([MaKy])
REFERENCES [dbo].[Ky] ([MaKy])
GO
ALTER TABLE [dbo].[MonHocCuaNganh]  WITH CHECK ADD FOREIGN KEY([MaKy])
REFERENCES [dbo].[Ky] ([MaKy])
GO
ALTER TABLE [dbo].[sinhVien]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
ALTER TABLE [dbo].[sinhVien]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
GO
/****** Object:  StoredProcedure [dbo].[checkTrangThai]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[checkTrangThai](@maLop nvarchar(10))
as
begin
		if EXISTS  (select trangthai from diem where masinhvien in(select masinhvien from LopSinhVien where malop like @maLop)
						and mamon in (select mamon from MonHocCuaNganh where maky in(select maky from lop where maLop like @maLop) 
						and maNganh in (select maNganh from lop where maLop like @maLop) )  and trangthai is null or trangthai like '')
			begin  
				select 1;
			end
			else select 2;
end
GO
/****** Object:  StoredProcedure [dbo].[diemSV]    Script Date: 12/6/2021 9:48:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[diemSV](@masv nvarchar(10),@manganh nvarchar(10))
as
begin 
	declare @solan int 
	declare @i int =1
	declare @maMon nvarchar(10)
	set @solan =
	(select COUNT(*) from  MonHocCuaNganh where manganh like @manganh)
	while @i<=@solan 
	begin
		set @mamon =(SELECT mamon FROM ( SELECT ROW_NUMBER () OVER (ORDER BY idMonHocCuaNganh) AS RowNum,*FROM MonHocCuaNganh where manganh like @manganh) sub
		WHERE
		RowNum = @i and maNganh like @manganh)
		insert diem(maSinhVien,maMon) values(@maSV,@maMon)
	set @i= @i +1
	end
end;
GO
USE [master]
GO
ALTER DATABASE [duan1] SET  READ_WRITE 
GO
