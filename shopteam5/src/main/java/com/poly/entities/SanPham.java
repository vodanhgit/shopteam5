package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "SanPham")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Masanpham")
	private int maSanPham;

	@Column(name="Gia")
	private int gia;

	@Column(name="Hinhanh")
	private String hinhAnh;

	@Column(name="Loai")
	private String loai;

	@Column(name="Makhuyenmai")
	private String maKhuyenMai;

	@Column(name="Mau")
	private String mau;

	@Column(name="Mota")
	private String moTa;

	@Column(name="Size")
	private String size;

	@Column(name="Soluong")
	private int soLuong;

	@Column(name="Tensanpham")
	private String tenSanPham;

	@Column(name="Trangthai")
	private String trangThai;

	//bi-directional many-to-one association to ChiTietGioHang
	@OneToMany(mappedBy="sanPham1")
	private List<ChiTietGioHang> chiTietGioHangs;

	//bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy="sanPham2")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	//bi-directional many-to-one association to KhuyenMai
	@OneToMany(mappedBy="sanPham3")
	private List<KhuyenMai> khuyenMais;

	//bi-directional many-to-one association to GioHang
	@ManyToOne
	@JoinColumn(name="ID_Gio")
	private GioHang gioHang2;

	
}