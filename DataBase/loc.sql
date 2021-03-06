USE [plmobile]
GO
/****** Object:  Table [dbo].[chitietsanpham]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chitietsanpham](
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [varchar](50) NULL,
	[ManHinh] [varchar](50) NOT NULL,
	[CameraTruoc] [text] NOT NULL,
	[CameraSau] [text] NOT NULL,
	[HeDieuHanh] [varchar](50) NOT NULL,
	[CPU] [text] NOT NULL,
	[ChipDoHoa] [varchar](50) NOT NULL,
	[Ram] [varchar](20) NOT NULL,
	[BoNhoTrong] [varchar](20) NOT NULL,
	[HoTroTheNho] [text] NOT NULL,
	[SoSim] [varchar](20) NOT NULL,
	[DungLuongPin] [varchar](20) NOT NULL,
	[KetNoi] [text] NOT NULL,
 CONSTRAINT [pk_chitietsanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[MaKhachHang] [int] NOT NULL,
	[MaGioHang] [int] NOT NULL,
	[TongTien] [int] NOT NULL,
	[NgayMua] [date] NOT NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [pk_giohang] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giohangchitiet]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohangchitiet](
	[MaGioHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [pk_giohangchitiet] PRIMARY KEY CLUSTERED 
(
	[MaGioHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khachhang](
	[MaKhachHang] [int] NOT NULL,
	[MaTaiKhoan] [int] NOT NULL,
	[HoTen] [varchar](30) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[DiaChi] [varchar](100) NOT NULL,
 CONSTRAINT [pk_khachhang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[MaLSP] [int] NOT NULL,
	[TenLSP] [varchar](50) NOT NULL,
	[bixoa] [int] NOT NULL,
 CONSTRAINT [pk_loaisanpham] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhasanxuat]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhasanxuat](
	[MaNSX] [int] NOT NULL,
	[TenNSX] [text] NOT NULL,
	[MoTa] [text] NOT NULL,
	[bixoa] [int] NOT NULL,
 CONSTRAINT [pk_nhasanxuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sanpham](
	[MaNSX] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[TenSanPham] [text] NOT NULL,
	[HinhAnh] [varchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[bixoa] [int] NOT NULL,
	[SoLuotXem] [int] NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [pk_sanpham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 23/04/2017 8:57:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taikhoan](
	[MaTaiKhoan] [int] NOT NULL,
	[TenDangNhap] [varchar](30) NOT NULL,
	[MatKhau] [varchar](10) NOT NULL,
	[bixoa] [int] NOT NULL,
 CONSTRAINT [pk_taikhoan] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (1, N'Iphone7', N'DVGA, 4.0", 640 x 1136 pixels', N'13 MP', N'24.0 MP, Quay phim FullHD 1080p@30fps', N'iOS 10.0', N'Apple A7, 2 nhân, 1.3 GHz', N'PowerVR G6430', N'64 GB', N'128 GB', N'Không', N'1', N'3540 mAh', N'Wi-Fi hotspot, Wi-Fi Direct, Wi-Fi 802.11 a/b/g/n/ac, Dual-band')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (2, N'Iphone 5s', N'DVGA, 4.0", 640 x 1136 pixels', N'8 MP', N'13.0 MP, Quay phim FullHD 1080p@30fps', N'iOS 8.0', N'Apple A7, 2 nhân, 1.3 GHz', N'PowerVR G6430', N'32 GB', N'128 GB', N'Không', N'1 Sim, Nano SIM', N'1560 mAh', N'Wi-Fi hotspot, Wi-Fi Direct, Wi-Fi 802.11 a/b/g/n/ac, Dual-band')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (3, N'Iphone6', N'Retina HD, 4.7", 1334 x 750', N'13 MP', N'24.0 MP, Quay phim FullHD 1080p@60fps', N'iOS 10.0', N'Apple A8, 2 nhân, 1.4 GHz', N'PowerVR GX6450', N'64 GB', N'128 GB', N'Không', N'1 Sim, Nano SIM', N'1810 mAh', N'Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (4, N'IPhone6 plus', N'Retina HD, 5.5", 1080 x 1920 pixels', N'13.0 MP, Quay phim FullHD 1080p@60fps', N'24.0 MP', N'iOS 10.0', N'Apple A8, 2 nhân, 1.4 GHz', N'PowerVR GX6450', N'64 GB', N'64 GB', N'Không', N'1 Sim, Nano SIM', N'2915 mAh', N'Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (5, N'SamSung Galaxy s5', N'HD, 5.0", 720 x 1280 pixels', N'8.0 MP, Quay phim FullHD 1080p@30fps', N'13 MP', N'Android 4.4 (KitKat)', N'Qualcomm Snapdragon 410, 4 nhân, 1.2 GHz', N'Adreno 306', N'2 GB', N'16 GB', N'H? tr? th? t?i đa: 64 GB', N'2 SIM, Nano SIM', N'2300 mAh', N'Wi-Fi Direct, Wi-Fi hotspot, Wi-Fi 802.11 b/g/n')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (6, N'SamSung Galaxy S6', N'Quad HD, 5.7", 1440 x 2560 pixels', N'5 MP', N'13 MP, Quay phim 4K 2160p@30fps', N'Android 5.1 (Lollipop)', N'Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 G', N'Mali-T760', N'4GB', N'32 GB', N'Không', N'1 Sim, Nano SIM', N'3000 mAh', N'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi hotspot, Wi-Fi Direct')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (7, N'SamSung Galaxy J7 Primer', N'Quad HD, 5.7", 1440 x 2560 pixels', N'5 MP', N'16 MP, Quay phim 4K 2160p@30fps', N'Android 5.1 (Lollipop)', N'Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 G', N'Mali-T760', N'4GB', N'32 GB', N'Không', N'1 Sim, Nano SIM', N'3000 mAh', N'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi hotspot, Wi-Fi Direct')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (8, N'SamSung Galaxy Note5', N'Quad HD, 5.7", 1440 x 2560 pixels', N'5 MP', N'16 MP, Quay phim 4K 2160p@30fps', N'Android 5.1 (Lollipop)', N'Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57', N'Mali-T760', N'4GB', N'32 GB', N'Không', N'1 Sim, Nano SIM', N'3000 mAh', N'Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi hotspot, Wi-Fi Direct')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (9, N'ZenPhone3', N'HD, 5.0", 720 x 1280 pixels', N'5 MP', N'8.0 MP, Quay phim FullHD 1080p@30fps', N'Android 5.0 (Lollipop)', N'Qualcomm Snapdragon 410, 4 nhân, 1.2 GHz', N'Adreno 306', N'2 GB', N'16 GB', N'H? tr? th? t?i đa: 128 GB', N'2 SIM, Micro SIM', N'2070 mAh', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (10, N'ZenPhone5', N'HD, 5.0", 720 x 1280 pixels', N'5 MP', N'8.0 MP, Quay phim FullHD 1080p@30fps', N'Android 5.0 (Lollipop)', N'Qualcomm Snapdragon 410, 4 nhân, 1.2 GHz', N'Adreno 306', N'2 GB', N'16 GB', N'H? tr? th? t?i đa: 128 GB', N'2 SIM, Micro SIM', N'2070 mAh', N'Wi-Fi 802.11 b/g/n, Wi-Fi Direct, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (11, N'Sony X', N'Full HD, 5.2", 1080 x 1920 pixels', N'5 MP', N'20.7 MP, Quay phim 4K 2160p@30fps', N'Android 5.0 (Lollipop)', N'Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57', N'Adreno 430', N'3GB', N'32 GB', N'H? tr? th? t?i đa: 128 GB', N'1 Sim, Nano SIM', N'2930mAh', N'Wi-Fi Direct, DLNA, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (12, N'Sony XA', N'Full HD, 5.2", 1080 x 1920 pixels', N'5 MP', N'20.7 MP, Quay phim 4K 2160p@30fps', N'Android 5.0 (Lollipop)', N'Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57', N'Adreno 430', N'3GB', N'32 GB', N'H? tr? th? t?i đa: 128 GB', N'1 Sim, Nano SIM', N'2930mAh', N'Wi-Fi Direct, DLNA, Wi-Fi hotspot, Wi-Fi 802.11 a/b/g/n/ac')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (13, N'Huawei GR5', N'IPS-LCD, 5.5", 1080 x 1920 pixels', N'5 MP', N'13 MP, Quay phim FullHD 1080p@30fps\r\n', N'Android 5.0 (Lollipop)', N'MTK 6752, 8 nhân, 1.7 GHz', N'Mali-T760', N'2 GB', N'16 GB', N'H? tr? th? t?i đa: 32 GB', N'2 SIM, Micro SIM', N'2900mAh', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (14, N'Lenovo VibeShot', N'IPS-LCD, 5.5", 1080 x 1920 pixels', N'5 MP', N'13 MP, Quay phim FullHD 1080p@30fps', N'Android 5.0 (Lollipop)', N'MTK 6752, 8 nhân, 1.7 GHz', N'Mali-T760', N'2 GB', N'16 GB', N'H? tr? th? t?i đa: 32 GB', N'2 SIM, Micro SIM', N'2900mAh', N'Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (15, N'Oppo F1s', N'5.h inch', N'13 MP', N'13MP', N'Adroid 6.0', N'8 Nhân', N'Snapdragon 805', N'3G', N'16G', N'128G', N'2', N'3198 mA', N'blutooth, wifi')
INSERT [dbo].[chitietsanpham] ([MaSanPham], [TenSanPham], [ManHinh], [CameraTruoc], [CameraSau], [HeDieuHanh], [CPU], [ChipDoHoa], [Ram], [BoNhoTrong], [HoTroTheNho], [SoSim], [DungLuongPin], [KetNoi]) VALUES (16, N'Nokia ', N'gxbh', N'12MP', N'13MP', N'Ad', N'gggf', N'ff', N'2G', N'13G', N'123G', N'2', N'kk', N'gh')
INSERT [dbo].[giohang] ([MaKhachHang], [MaGioHang], [TongTien], [NgayMua], [TinhTrang]) VALUES (1, 1, 0, CAST(0x493C0B00 AS Date), 0)
INSERT [dbo].[giohang] ([MaKhachHang], [MaGioHang], [TongTien], [NgayMua], [TinhTrang]) VALUES (2, 2, 0, CAST(0x423C0B00 AS Date), 0)
INSERT [dbo].[khachhang] ([MaKhachHang], [MaTaiKhoan], [HoTen], [NgaySinh], [DiaChi]) VALUES (1, 1, N'Nguy?n Văn A', CAST(0xCA3A0B00 AS Date), N'HCM')
INSERT [dbo].[khachhang] ([MaKhachHang], [MaTaiKhoan], [HoTen], [NgaySinh], [DiaChi]) VALUES (2, 2, N'Bùi Đ?nh An', CAST(0x2A3C0B00 AS Date), N'HCM')
INSERT [dbo].[khachhang] ([MaKhachHang], [MaTaiKhoan], [HoTen], [NgaySinh], [DiaChi]) VALUES (3, 3, N'Nguy?n B?o Ng?c', CAST(0x423C0B00 AS Date), N'HCM')
INSERT [dbo].[loaisanpham] ([MaLSP], [TenLSP], [bixoa]) VALUES (1, N'Đi?n Tho?i', 0)
INSERT [dbo].[loaisanpham] ([MaLSP], [TenLSP], [bixoa]) VALUES (2, N'?p Lưng', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (1, N'  Apple ', N'M?', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (2, N'SamSung', N'Hàn Qu?c', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (3, N'Lenovo   ', N'Đ?c', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (4, N' Sony ', N'Nh?t', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (5, N'  Asus', N'China', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (6, N' Microsoft ', N'VN', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (13, N'Oppo', N'HongKong', 0)
INSERT [dbo].[nhasanxuat] ([MaNSX], [TenNSX], [MoTa], [bixoa]) VALUES (14, N'Cty Trung Qu?c', N'China', 0)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (1, 1, N'phone7', N'/images/iphone-7.png', 21690000, 0, 0, CAST(0x453C0B00 AS Date), 7)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (1, 2, N'Iphone 5s  ', N'/images/iphone-5s.png', 6900000, 0, 0, CAST(0x453C0B00 AS Date), 10)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (1, 3, N'Iphone6', N'/images/iphone-6s-.png', 13990000, 0, 0, CAST(0x453C0B00 AS Date), 2)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (1, 4, N'IPhone6 plus', N'/images/iphone-6-plus.png', 15990000, 0, 0, CAST(0x493C0B00 AS Date), 5)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (2, 5, N'SamSung Galaxy s5', N'/images/samsung-galaxy-s5.png', 6590000, 0, 0, CAST(0x423C0B00 AS Date), 3)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (2, 6, N'SamSung Galaxy S6', N'/images/samsung-galaxy-s6.png', 8900000, 0, 0, CAST(0x383C0B00 AS Date), 5)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (2, 7, N'SamSung Galaxy J7 Primer', N'/images/samsung-galaxy-j7.png', 6290000, 1, 0, CAST(0x423C0B00 AS Date), 6)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (2, 8, N'SamSung Galaxy Note5', N'/images/samsung-galaxy-note-5.png', 5890000, 1, 0, CAST(0x413C0B00 AS Date), 3)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (5, 9, N'ZenPhone 3', N'/images/asus-zenfone-3.png', 7990000, 1, 0, CAST(0x453C0B00 AS Date), 0)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (5, 10, N'ZenPhone5', N'/images/asus-zenfone.png', 3480000, 1, 0, CAST(0x453C0B00 AS Date), 0)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (4, 11, N'Sony X', N'/images/sony-xperia-x.png', 9990000, 0, 0, CAST(0x413C0B00 AS Date), 10)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (4, 12, N'Sony XA', N'/images/sony-xperia-xa.png', 4890000, 1, 0, CAST(0x423C0B00 AS Date), 3)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (3, 13, N'Huawei GR5', N'/images/huawei.png', 4490000, 1, 0, CAST(0x413C0B00 AS Date), 5)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (14, 14, N'Lenovo VibeShot', N'/images/lenovo-vibe.png', 2590000, 0, 0, CAST(0x413C0B00 AS Date), 1)
INSERT [dbo].[sanpham] ([MaNSX], [MaSanPham], [TenSanPham], [HinhAnh], [Gia], [bixoa], [SoLuotXem], [NgayNhap], [SoLuong]) VALUES (13, 15, N'Oppo F1s', N'/images/oppo-f1.png', 5990000, 0, 0, CAST(0x433C0B00 AS Date), 5)
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [bixoa]) VALUES (1, N'Locxinhdep', N'123', 0)
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [bixoa]) VALUES (2, N'phuccut', N'123', 0)
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [bixoa]) VALUES (3, N'daothiloc', N'123', 1)
INSERT [dbo].[taikhoan] ([MaTaiKhoan], [TenDangNhap], [MatKhau], [bixoa]) VALUES (4, N'admin', N'123', 0)
ALTER TABLE [dbo].[sanpham]  WITH CHECK ADD  CONSTRAINT [FK_sanpham_nhasanxuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[nhasanxuat] ([MaNSX])
GO
ALTER TABLE [dbo].[sanpham] CHECK CONSTRAINT [FK_sanpham_nhasanxuat]
GO
