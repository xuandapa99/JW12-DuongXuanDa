CREATE DATABASE [ShopDoDa]
GO
/****** Object:  Table [dbo].[ChiTietDH]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
CREATE TABLE [dbo].[ChiTietDH](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](80) NOT NULL,
	[AnhDM] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[DiaChiGH] [nvarchar](70) NOT NULL,
	[TongTien] [int] NOT NULL,
	[MaTK] [int] NULL,
	[TinhTrang] [int] NULL,
	[HinhThucTT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[MaLH] [int] IDENTITY(1,1) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[DienThoai] [varchar](11) NOT NULL,
	[ThoiGianLamViec] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[GiaBan] [int] NOT NULL,
	[AnhSP] [nvarchar](100) NULL,
	[MoTa] [nvarchar](max) NULL,
	[PhanTramKM] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [int] IDENTITY(1,1) NOT NULL,
	[DiaChiEmail] [nvarchar](50) NOT NULL,
	[MatKhau] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](40) NOT NULL,
	[VaiTro] [varchar](30) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 1/20/2021 9:39:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[MaTT] [int] IDENTITY(1,1) NOT NULL,
	[AnhTT] [nvarchar](100) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](100) NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDH] ON 

INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (1, 2, 40, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (2, 3, 41, 3)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (3, 4, 40, 4)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (4, 4, 42, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (5, 5, 50, 3)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (6, 6, 41, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (7, 7, 40, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (8, 8, 38, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (9, 9, 50, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (10, 9, 41, 3)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (11, 10, 40, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (12, 11, 41, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (13, 12, 41, 1)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (14, 13, 41, 3)
INSERT [dbo].[ChiTietDH] ([id], [SoDH], [MaSP], [SoLuong]) VALUES (15, 13, 33, 1)
SET IDENTITY_INSERT [dbo].[ChiTietDH] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [AnhDM]) VALUES (1, N'Túi đeo chéo da', N'tui-deo-cheo-nam-balc26-bo_dam__1__920750b3342d438ca526081a2bfab41d_master.jpg')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [AnhDM]) VALUES (2, N'Balo da', N'2_afc76c43f54b433298ccf729b753bd34_master.jpg')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [AnhDM]) VALUES (3, N'Cặp da công sở', N'cap-da-nam-lata-ca29-bo-nhat__1__5f68ce50698d46679baf0cf93156d637_master.jpg')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [AnhDM]) VALUES (4, N'Túi du lịch', N'4-1_51c2ca2899f14edc80e5fd199a1b5aae_master.jpg')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM], [AnhDM]) VALUES (5, N'Ví da', N'vi-da-passport-lata-lvn65-mau-xanh-den__2__c66184b6664940bd9e063b1fcf1708b5_master.jpg')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (2, CAST(N'2020-12-28T10:28:32.750' AS DateTime), N'dong da', 525000, 4, 0, 1)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (3, CAST(N'2020-12-28T10:34:23.733' AS DateTime), N'dong da', 1770000, 4, 0, 1)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (4, CAST(N'2020-12-28T10:38:08.853' AS DateTime), N'Nhổn, Từ Liêm, Hà Nội', 2690000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (5, CAST(N'2020-12-28T15:16:03.150' AS DateTime), N'Nhổn, Từ Liêm, Hà Nội', 216000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (6, CAST(N'2020-12-28T15:38:33.130' AS DateTime), N'Nhổn, Từ Liêm, Hà Nội', 590000, 4, 0, 1)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (7, CAST(N'2020-12-28T15:47:28.187' AS DateTime), N'dong da', 525000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (8, CAST(N'2020-12-28T15:53:44.570' AS DateTime), N'dong da', 360000, 5, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (9, CAST(N'2020-12-28T17:59:16.433' AS DateTime), N'từ liêm', 1842000, 4, 0, 1)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (10, CAST(N'2020-12-28T22:29:15.770' AS DateTime), N'Nhổn, Từ Liêm, Hà Nội', 525000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (11, CAST(N'2020-12-28T23:09:29.097' AS DateTime), N'dong da', 590000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (12, CAST(N'2021-01-06T14:10:34.710' AS DateTime), N'99', 590000, 4, 0, 0)
INSERT [dbo].[DonHang] ([SoDH], [NgayDat], [DiaChiGH], [TongTien], [MaTK], [TinhTrang], [HinhThucTT]) VALUES (13, CAST(N'2021-01-06T14:31:37.427' AS DateTime), N'đống đa', 2112000, 4, 0, 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([MaLH], [DiaChi], [Email], [DienThoai], [ThoiGianLamViec]) VALUES (1, N'Nhổn, Từ Liêm, Hà Nội', N'xuandapa@gmail.com', N'0961010169', N'8h - 17h30, thứ 2 đến thứ 6')
SET IDENTITY_INSERT [dbo].[LienHe] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (31, 1, N'Túi Đeo Chéo Da Nam Lata BALC26D', 360000, N'tui-deo-cheo-nam-balc26-den__1__b40d091ecf034c7988c2736239d57ecb_master.jpg', N'<p><a href="https://latashop.com/collections/tui-deo-cheo-da-nam"><strong>Túi đeo chéo da nam</strong></a>&nbsp;Lata BALC26&nbsp;là mẫu thiết kế dành riêng cho những quý ông yêu thích sự gọn nhẹ và linh động. Thiết kế ngăn đựng tối ưu dành cho điện thoại, cáp sạc, cục sạc dự phòng hay tai phone.&nbsp;Phía sau lưng&nbsp;túi<strong>&nbsp;</strong>có thêm ngăn chứa phụ an toàn và dây đeo có thể đảo tư thế đeo tiện lợi.</p>

<p>THÔNG SỐ CHI TIẾT:</p>

<p><strong>Kích thước:</strong>&nbsp;Dài 13cm x Rộng 4,6cm x Cao 22cm</p>

<hr />
<p><strong>Số ngăn:</strong>&nbsp;4&nbsp;ngăn ( 1 ngăn chính + 3&nbsp;ngăn phụ )</p>

<hr />
<p><strong>Công dụng:</strong>&nbsp;Đựng vừa sổ tay, cục sạc dự phòng, điện thoại 7 inch....</p>

<hr />
<p><strong>Trọng lượng:</strong>&nbsp;405g</p>

<hr />
<p><strong>Chất liệu:</strong>&nbsp;Da tổng hợp cao cấp (*)</p>

<hr />
<p><strong>Xuất xứ:</strong>&nbsp;Việt Nam</p>

<p>(*) Chất liệu da tổng hợp cao cấp giúp sản phẩm luôn sáng bóng, chống thấm nước và bền bỉ, sử dụng lâu dài không bị bong tróc hay nổ da.</p>

<p>&nbsp;</p>
', 0, CAST(N'2020-12-25T19:00:22.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (32, 1, N'Túi Đeo Chéo Da Nam Lata BALC26N', 360000, N'tui-deo-cheo-nam-balc26-nau__1__ac30e10b9aea42aa89e015765bc16f3d_master.jpg', N'<p><a href="https://latashop.com/collections/tui-deo-cheo-da-nam"><strong>Túi đeo chéo da nam</strong></a>&nbsp;Lata BALC26&nbsp;là mẫu thiết kế dành riêng cho những quý ông yêu thích sự gọn nhẹ và linh động. Thiết kế ngăn đựng tối ưu dành cho điện thoại, cáp sạc, cục sạc dự phòng hay tai phone.&nbsp;Phía sau lưng&nbsp;túi<strong>&nbsp;</strong>có thêm ngăn chứa phụ an toàn và dây đeo có thể đảo tư thế đeo tiện lợi.</p>

<p>THÔNG SỐ CHI TIẾT:</p>

<p><strong>Kích thước:</strong>&nbsp;Dài 13cm x Rộng 4,6cm x Cao 22cm</p>

<hr />
<p><strong>Số ngăn:</strong>&nbsp;4&nbsp;ngăn ( 1 ngăn chính + 3&nbsp;ngăn phụ )</p>

<hr />
<p><strong>Công dụng:</strong>&nbsp;Đựng vừa sổ tay, cục sạc dự phòng, điện thoại 7 inch....</p>

<hr />
<p><strong>Trọng lượng:</strong>&nbsp;405g</p>

<hr />
<p><strong>Chất liệu:</strong>&nbsp;Da tổng hợp cao cấp (*)</p>

<hr />
<p><strong>Xuất xứ:</strong>&nbsp;Việt Nam</p>

<p>(*) Chất liệu da tổng hợp cao cấp giúp sản phẩm luôn sáng bóng, chống thấm nước và bền bỉ, sử dụng lâu dài không bị bong tróc hay nổ da.</p>
', NULL, CAST(N'2020-12-25T19:10:22.230' AS DateTime), 50)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (33, 1, N'Túi Đeo Chéo Da Nam Lata BALC26BD', 360000, N'tui-deo-cheo-nam-balc26-bo_dam__1__920750b3342d438ca526081a2bfab41d_master.jpg', N'<p><a href="https://latashop.com/collections/tui-deo-cheo-da-nam"><strong>Túi đeo chéo da nam</strong></a>&nbsp;Lata BALC26&nbsp;là mẫu thiết kế dành riêng cho những quý ông yêu thích sự gọn nhẹ và linh động. Thiết kế ngăn đựng tối ưu dành cho điện thoại, cáp sạc, cục sạc dự phòng hay tai phone.&nbsp;Phía sau lưng&nbsp;túi<strong>&nbsp;</strong>có thêm ngăn chứa phụ an toàn và dây đeo có thể đảo tư thế đeo tiện lợi.</p>

<p>THÔNG SỐ CHI TIẾT:</p>

<p><strong>Kích thước:</strong>&nbsp;Dài 13cm x Rộng 4,6cm x Cao 22cm</p>

<hr />
<p><strong>Số ngăn:</strong>&nbsp;4&nbsp;ngăn ( 1 ngăn chính + 3&nbsp;ngăn phụ )</p>

<hr />
<p><strong>Công dụng:</strong>&nbsp;Đựng vừa sổ tay, cục sạc dự phòng, điện thoại 7 inch....</p>

<hr />
<p><strong>Trọng lượng:</strong>&nbsp;405g</p>

<hr />
<p><strong>Chất liệu:</strong>&nbsp;Da tổng hợp cao cấp (*)</p>

<hr />
<p><strong>Xuất xứ:</strong>&nbsp;Việt Nam</p>

<p>(*) Chất liệu da tổng hợp cao cấp giúp sản phẩm luôn sáng bóng, chống thấm nước và bền bỉ, sử dụng lâu dài không bị bong tróc hay nổ da.</p>
', 5, CAST(N'2020-12-25T19:42:22.000' AS DateTime), 102)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (34, 1, N'Túi Đeo Chéo Da Nam Lata BALC26BN', 360000, N'tui-deo-cheo-nam-balc26-bo_nhat__1__d461c9139dfb4aaf9bbbc9893d008379_master.jpg', N'<p><a href="https://latashop.com/products/tui-deo-cheo-da-nam-lata-balc26bn-mau-bo-nhat#product-description">MÔ TẢ SẢN PHẨM</a></p>

<p><a href="https://latashop.com/collections/tui-deo-cheo-da-nam"><strong>Túi đeo chéo da nam</strong></a>&nbsp;Lata BALC26&nbsp;là mẫu thiết kế dành riêng cho những quý ông yêu thích sự gọn nhẹ và linh động. Thiết kế ngăn đựng tối ưu dành cho điện thoại, cáp sạc, cục sạc dự phòng hay tai phone.&nbsp;Phía sau lưng&nbsp;túi<strong>&nbsp;</strong>có thêm ngăn chứa phụ an toàn và dây đeo có thể đảo tư thế đeo tiện lợi.</p>

<p>THÔNG SỐ CHI TIẾT:</p>

<p><strong>Kích thước:</strong>&nbsp;Dài 13cm x Rộng 4,6cm x Cao 22cm</p>

<hr />
<p><strong>Số ngăn:</strong>&nbsp;4&nbsp;ngăn ( 1 ngăn chính + 3&nbsp;ngăn phụ )</p>

<hr />
<p><strong>Công dụng:</strong>&nbsp;Đựng vừa sổ tay, cục sạc dự phòng, điện thoại 7 inch....</p>

<hr />
<p><strong>Trọng lượng:</strong>&nbsp;405g</p>

<hr />
<p><strong>Chất liệu:</strong>&nbsp;Da tổng hợp cao cấp (*)</p>

<hr />
<p><strong>Xuất xứ:</strong>&nbsp;Việt Nam</p>

<p>(*) Chất liệu da tổng hợp cao cấp giúp sản phẩm luôn sáng bóng, chống thấm nước và bền bỉ, sử dụng lâu dài không bị bong tróc hay nổ da.</p>
', 5, CAST(N'2020-12-25T19:43:22.000' AS DateTime), 500)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (37, 2, N'Balo Da Nam Lata BAL12BD', 525000, N'2_afc76c43f54b433298ccf729b753bd34_master.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL12 với phong cách trẻ trung, trang trí khóa gài cá tính, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Đựng vừa laptop 15.6 inch</p>

<p>- Kích thước: dài 37cm x rộng 9cm x cao 46cm</p>

<p>- Số ngăn: 9 ngăn.</p>

<p>- Màu sắc: Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng: 1500g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL12 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', NULL, CAST(N'2020-12-25T19:44:22.000' AS DateTime), 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (38, 2, N'Balo Da Đa Năng Lata BAL33BD', 360000, N'balo-da-nang-lata-bal33-mau-bo-dam_4605eabe6e454ca1bfd6c6a00a531243_master.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL12 với phong cách trẻ trung, trang trí khóa gài cá tính, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Đựng vừa laptop 15.6 inch</p>

<p>- Kích thước: dài 37cm x rộng 9cm x cao 46cm</p>

<p>- Số ngăn: 9 ngăn.</p>

<p>- Màu sắc: Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng: 1500g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL12 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', NULL, CAST(N'2020-12-25T19:45:37.000' AS DateTime), 200)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (39, 2, N'Balo Da Nam Lata BAL12D', 525000, N'2_1ad6d5f339da4e6fb7eb80e5245bc9ed_master.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL12 với phong cách trẻ trung, trang trí khóa gài cá tính, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Đựng vừa laptop 15.6 inch</p>

<p>- Kích thước: dài 37cm x rộng 9cm x cao 46cm</p>

<p>- Số ngăn: 9 ngăn.</p>

<p>- Màu sắc: Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng: 1500g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL12 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', NULL, CAST(N'2020-12-25T19:46:24.000' AS DateTime), 200)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (40, 2, N'Balo Da Nam Lata BAL04BD', 525000, N'bal04-_bo_dam__4__28d164c790f94efd9cc64a43ce766fdb_large.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL12 với phong cách trẻ trung, trang trí khóa gài cá tính, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Đựng vừa laptop 15.6 inch</p>

<p>- Kích thước: dài 37cm x rộng 9cm x cao 46cm</p>

<p>- Số ngăn: 9 ngăn.</p>

<p>- Màu sắc: Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng: 1500g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL12 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', NULL, CAST(N'2020-12-25T19:47:54.000' AS DateTime), 499)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (41, 2, N'Balo Da Đa Năng Lata BAL33D', 590000, N'balo-da-nang-lata-bal32-mau-den_e687c24fd11148fcb761552ac2ce2537_master.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL33 với phong cách thời trang trẻ trung, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Kích thước: cao 38cm x rộng 14cm x ngang 30cm- Số ngăn: 7 ngăn.</p>

<p>- Màu sắc : Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng : 1200g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL33 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', 0, CAST(N'2020-12-26T12:22:05.947' AS DateTime), 115)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (42, 2, N'Balo Da Đa Năng LATA BAL33N', 590000, N'balo-da-nang-lata-bal33-mau-nau_43c1d89ad6bf4cf694bc072d0534492f_master.jpg', N'<p>Mẫu&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu"><strong>balo da&nbsp;</strong></a>Lata BAL33 với phong cách thời trang trẻ trung, đi kèm với dây đeo chắc chắn và dễ dàng thay đổi chiều dài tiện lợi. Chất liệu da tổng hợp cao cấp mềm mại, không bong tróc tự nhiên và không thấm nước. Lớp lót phía trong balo bằng nhung êm ái. Mẫu balo da phù hợp cho cả nam và nữ.</p>

<p>- Kích thước: cao 38cm x rộng 14cm x ngang 30cm- Số ngăn: 7 ngăn.</p>

<p>- Màu sắc : Nâu , Bò nhạt , Bò đậm, Đen.</p>

<p>- Trọng lượng : 1200g</p>

<p>- Xuất xứ: Việt Nam</p>

<p>Kích thước&nbsp;<strong>balo da</strong>&nbsp;Lata BAL33 vừa phải và gọn nhẹ. Không gian phía trong khá rộng để bạn đựng vừa laptop, ipad, điện thoại, sách vở cũng như những vật dụng cần thiết cho đi học, đi chơi và đi làm.</p>
', 0, CAST(N'2020-12-15T12:22:40.000' AS DateTime), 150)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [GiaBan], [AnhSP], [MoTa], [PhanTramKM], [NgayTao], [SoLuong]) VALUES (50, 5, N'Ví da dê', 360000, N'vi-da-passport-lata-lvn65-mau-xanh-den__2__c66184b6664940bd9e063b1fcf1708b5_master.jpg', N'<p>nothing.</p>
', 80, CAST(N'2020-12-28T14:40:37.067' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTK], [DiaChiEmail], [MatKhau], [HoTen], [VaiTro], [GioiTinh], [NgaySinh], [SoDienThoai], [TrangThai]) VALUES (4, N'admin@gmail.com', N'1', N'User', N'Administrator', N'Nam', CAST(N'1999-06-21T00:00:00.000' AS DateTime), N'0393719779', 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [DiaChiEmail], [MatKhau], [HoTen], [VaiTro], [GioiTinh], [NgaySinh], [SoDienThoai], [TrangThai]) VALUES (5, N'xuandapa@gmail.com', N'1', N'Xuân Đà', N'User', N'Nữ', CAST(N'1999-06-27T00:00:00.000' AS DateTime), N'0393719775', 1)
INSERT [dbo].[TaiKhoan] ([MaTK], [DiaChiEmail], [MatKhau], [HoTen], [VaiTro], [GioiTinh], [NgaySinh], [SoDienThoai], [TrangThai]) VALUES (9, N'xuandapademo@gmail.com', N'1', N'User demo', N'User', N'Nữ', CAST(N'2021-01-06T00:00:00.000' AS DateTime), N'0961010169', 1)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTuc] ON 

INSERT [dbo].[TinTuc] ([MaTT], [AnhTT], [NoiDung], [TieuDe], [NgayTao]) VALUES (3, N'trung-thu-lata-1_12f2b0d62f5a476c8b9605d19ba9018c_5fdec584ca9843018509458421a96541_1024x1024.jpg', N'<p><strong>TRAO THÀNH Ý - GỬI YÊU THƯƠNG</strong></p>

<p><strong>Trung Thu này, Lata cùng bạn về nhà</strong></p>

<p>Khi cái nắng mùa hè đã đi xa, cái lành lạnh, man mác mùa Thu ùa về. Vừa kịp cho ta nhận là một mùa Trung Thu nữa lại đến. Khi ngoài đường nô nức những màu sắc rựa rõ của đèn lồng, của tiếng lân rộn rang từng nhịp, khi ánh trăng rằm tháng 8 chiếu rọi mọi nơi. Ta nhận ra rằng là lúc ta nên chậm lại, về bên gia đình, cùng ăn bánh, phá cỗ dưới trăng. Cùng nhau đoàn tụ, cùng nhau sẻ chia yêu thương, ùng nhau gắn kết tình cảm gia đình hơn. Trong khoảnh khắc đầy ý nghĩa đó, Lata gửi đến bạn, gửi đến mọi nhà chiếc bánh Trung Thu thơm ngon, căng đầy.</p>

<p><strong>Chi tiết chương trình:</strong></p>

<p>► Từ 16/9 - 01/10/2020 (tức ngày 26/7 ÂL - 15/8 ÂL)</p>

<p>► Áp dụng cho các đơn hàng từ 599.000đ khi mua hàng trên toàn hệ thống của Lata</p>

<p><strong>Hộp quà bao gồm:&nbsp;</strong>2 bánh trung thu nhân thập cẩm và nhân đậu xanh, đi kèm túi đựng.</p>

<p>Cùng Lata điểm qua hình ảnh hộp quà cực đặc biệt này nhé!</p>
', N'[QUÀ TẶNG ĐẶC BIỆT] Cùng Lata Trao Thành Ý - Gửi Yêu Thương', CAST(N'2020-12-25T16:10:50.240' AS DateTime))
INSERT [dbo].[TinTuc] ([MaTT], [AnhTT], [NoiDung], [TieuDe], [NgayTao]) VALUES (4, N'7286122e2aa4cdfa94b5_e1332b5b3f0547149cf448804636dec6_1024x1024.jpg', N'<p>Bạn rất hào hứng cho những chuyến đi, nhưng xếp đồ luôn là nỗi lo lắng khi không chọn được những túi du lịch thích hợp. Lata gợi ý cho bạn một 05 loại túi du lịch phổ biến thích hợp cho từng chuyến đi nhé.&nbsp;</p>

<p><strong>Balo</strong></p>

<p>Du lịch phượt, du lịch bụi đang là xu hướng cực hot trong giới trẻ.&nbsp;<a href="https://www.latashop.com/collections/balo-da-nu">Balo&nbsp;</a>trở thành một phụ kiện không thể thiếu trong mỗi chuyến đi. Gói gọn mọi hành trang trên vai sẽ giúp bạn dễ dàng di chuyển hơn trong những chuyến trải nghiệm ngắn ngày.&nbsp;</p>

<p>&nbsp;</p>

<p><img src="https://file.hstatic.net/1000084161/file/7286122e2aa4cdfa94b5_b1dc42777992495fab5c80c57dad1453_grande.jpg" /></p>

<p>&nbsp;</p>

<p>Balo du lịch thích hợp cho những chuyến đi ngắn từ 2-4 ngày. Bạn có thể lựa chọn balo có kích thước lớn và chất liệu bằng da, chống thấm nước để có thể bảo vệ đồ dùng tốt nhất trong những chuyến đi.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Túi du lịch</strong></p>

<p>Thích hợp cho những chuyến công tác xa từ 3-4 ngày.&nbsp;<a href="https://www.latashop.com/collections/tui-du-lich">Túi du lịch</a>&nbsp;gọn nhẹ và tiện dụng với dây đeo và cả xách tay. Giúp bạn có thể mang vác hành lý dễ dàng tùy theo từng trường hợp.</p>

<p>Với túi da du lịch bạn nên chọn loại da mềm và chống thấm nước để phòng ngừa cho nhiều trường hợp đột xuất bên ngoài như mưa, ướt, …&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Vali mini</strong></p>

<p>Vali mini sẽ là một lựa chọn hoàn hảo dành cho những cô nàng du lịch ngắn ngày nhưng cần mang nhiều đồ để “sống ảo”. Trọng lượng vali mini thường khá nhẹ, thích hợp cho các cô gái kéo, xách tay. Thường vali mini đều được kết hợp cùng với 4 bánh xe giúp việc di chuyển dễ dàng và tiện dụng hơn.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Túi trống du lịch&nbsp;</strong></p>

<p>Được thiết kế chuyên dụng cho những chuyến đi, công tác dài ngày, đựng được nhiều vật dụng với sức chứa lớn. Dù vậy túi trống thường được thiết kế đơn giản, thanh lịch, không mang cảm giác cồng kềnh khi đeo hay mang xách.&nbsp;</p>

<p>Túi trống thường được thiết kế kết hợp dây xách và đeo chéo, không lo dây đứt hoặc hỏng bất chợt. Một số thiết kế túi trống có thêm bánh xe kéo thuận tiện khi di chuyển và thích hợp với phái nữ khi không phải mang vác nặng.</p>

<p>&nbsp;</p>

<p><a href="https://www.latashop.com/collections/tui-du-lich">Túi du lịch</a>&nbsp;là một vật dụng vô cùng cần thiết ngày nay khi nhu cầu đi lại của con người nhiều hơn. Chọn cho mình một túi du lịch thích hợp sẽ giúp bạn giảm bớt nhiều gánh lo và thỏa sức tận hưởng chuyến đi hoàn hảo của mình.</p>
', N'04 loại túi du lịch bạn không thể bỏ lỡ cho những chuyến đi hoàn hảo', CAST(N'2020-12-25T16:12:50.240' AS DateTime))
INSERT [dbo].[TinTuc] ([MaTT], [AnhTT], [NoiDung], [TieuDe], [NgayTao]) VALUES (5, N'68685207_2409266289393727_9084807801951223808_o_b5543c2a6f06432fb010736a0912f461_1024x1024.jpg', N'<p>Da là chất liệu được sử dụng rất nhiều trong việc sản xuất và gia công các đồ phụ kiện thời trang trong cuộc sống &nbsp;và cũng đang xu thế được nhiều người tiêu dùng lựa chọn, đặc biệt là giới trẻ. Tuy nhiên, với việc thời tiết thất thường như ngày nay rất dễ gây ố, khô da, ẩm mốc hay thậm chí là bong tróc chỉ sau một thời gian ngắn sử dụng. Sau đây LATA xin hướng dẫn cách bạn bảo quản để sản phẩm da của bạn luôn như mới.&nbsp;</p>

<ol>
	<li><strong>Hạn chế để vật dụng đồ da LATA ở trong môi trường ẩm thấp</strong></li>
</ol>

<ul>
	<li>Việc để chất liệu da trong mỗi trường ẩm thấp khiến da có điều kiện hút ẩm cao và dễ bị mốc,khô cứng và nhanh hư.</li>
	<li>Hạn chế để đồ da tiếp xúc trực tiếp hay sát nền nhà, dù nền nhà có lót gạch hay tráng xi măng hoặc trải thảm vì hơi nước từ đất vẫn dễ dàng thấm vào da.</li>
	<li>Nếu đồ da chẳng may bị ẩm ướt, bạn không nên dùng máy sấy để sấy, cồn, khăn ướt vì sẽ khiến da dễ bị khô, nứt, nên để da khô tự nhiên ở nơi thoáng gió.&nbsp;</li>
</ul>

<ol>
	<li><strong>Chú ý khi sử dụng đồ da LATA</strong></li>
</ol>

<ul>
	<li>Bạn nên rửa sạch tay trước khi sử dụng túi bởi mồ hôi và chất nhờn từ tay có thể khiến cho đồ da dễ bắt bụi, phần da túi mà chúng ta hay cầm vào có thể bị bong tróc hay thậm chí là chuyển màu khiến cho chiếc túi trở nên loang lổ mà thậm chí là cũ kĩ.</li>
	<li>Nên chú ý đến việc kiểm soát các vật dụng trong túi xách, việc đựng quá nhiều đồ có thể làm cho chiếc túi da của bạn mất dáng trông rất xấu hay nhiều khi nó còn khiến phần da túi bị căng ra, dễ bị nứt rách...</li>
	<li>Không được để những đồ sắc nhọn tiếp xúc trực tiếp lên bề mặt da vì sẽ làm da bị rách, thủng lỗ khiến đồ vật da xấu, mất thẩm mĩ…</li>
</ul>

<ol>
	<li><strong>Bảo dưỡng đồ da LATA thường xuyên</strong></li>
</ol>

<ul>
	<li>Dùng bản chải chuyên dụng cho da khi xử lý và phục hồi túi mang chất liệu này.</li>
	<li>Bạn nên dùng kem dưỡng ẩm hoặc dung dịch cho chất liệu da để giúp da túi dẻo dai và hạn chế các vết nứt.</li>
	<li>Lau sạch túi hàng tuần bằng miếng vải mềm.</li>
</ul>
', N'Hướng dẫn bảo quản đồ da', CAST(N'2020-12-25T16:14:50.240' AS DateTime))
INSERT [dbo].[TinTuc] ([MaTT], [AnhTT], [NoiDung], [TieuDe], [NgayTao]) VALUES (7, N'ngay_phu_nu_vietnam_20-10_bc99a85ccff04edfa6600c759ffdef3f_1024x1024.jpg', N'<p><strong>[HAPPY VIETNAM WOMEN''S DAY]</strong></p>

<p><strong>SALES OFF 20% CHO NÀNG THỎA THÍCH LỰA CHỌN</strong></p>

<p>Người phụ nữ Việt Nam đã từ rất lâu luôn được xem là biểu tượng của sự hy sinh cao cả. Là một người vợ, người mẹ luôn tần tảo chăm lo cho hạnh phúc của gia đình. Để tri ân và ghi nhớ những đức tính cao quý đó, ngày 20/10 hàng năm là thời điểm để mỗi người con, người chồng có cơ hội bày tỏ tình yêu thương của mình đối với người phụ nữ của riêng họ.</p>

<p>Góp thêm phần vào niềm vui của một nửa dân số, Lata gửi đến các chị em một món quà ưu đãi đặc biệt chỉ có trong mùa lễ này:</p>

<p><strong>"GIẢM 20% TOÀN BỘ SẢN PHẨM NỮ".</strong></p>

<p><strong>Chi tiết chương trình:</strong></p>

<p>▪️ Từ ngày 16 - 20.10.2020</p>

<p>▪️ Áp dụng cho toàn bộ đơn hàng trên website và tại cửa hàng.</p>

<p><em><strong>Đặc biệt: GIẢM SỐC 50% cho một số sản phẩm tại cửa hàng</strong></em></p>

<p>Với hàng nghìn sản phẩm cùng nhiều phong cách thời trang khác nhau, Lata muốn gửi gắm thông điệp mong rằng mỗi người phụ nữ sẽ luôn xinh đẹp và tỏa sáng theo cách riêng của bản thân mình.</p>

<p>Chúc các chị em có một ngày lễ 20/10 vui vẻ, hạnh phúc và tràn ngập yêu thương từ những người thân nhé!&nbsp;</p>
', N'Mừng ngày Phụ Nữ Việt Nam 20-10 | Ưu đãi 20% từ Lata', CAST(N'2020-12-25T16:17:50.240' AS DateTime))
SET IDENTITY_INSERT [dbo].[TinTuc] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TaiKhoan__79A7D0162E822653]    Script Date: 1/20/2021 9:39:12 AM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[DiaChiEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [fkHoaDon1] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DonHang] ([SoDH])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [fkHoaDon1]
GO
ALTER TABLE [dbo].[ChiTietDH]  WITH CHECK ADD  CONSTRAINT [fkHoaDon2] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDH] CHECK CONSTRAINT [fkHoaDon2]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
USE [master]
GO
ALTER DATABASE [ShopDoDa] SET  READ_WRITE 
GO
