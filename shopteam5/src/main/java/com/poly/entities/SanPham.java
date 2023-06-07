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
	@Column(name="MaSanPham")
	private int maSanPham;

	@Column(name="Gia")
	private int gia;

	@Column(name="HinhAnh")
	private String hinhAnh;

	@Column(name="Loai")
	private String loai;

	@Column(name="MaKhuyenMai")
	private String maKhuyenMai;

	@Column(name="Mau")
	private String mau;

	@Column(name="MoTa")
	private String moTa;

	@Column(name="Size")
	private String size;

	@Column(name="SoLuong")
	private int soLuong;

	@Column(name="TenSanPham")
	private String tenSanPham;

	@Column(name="TrangThai")
	private String trangThai;

	//bi-directional many-to-one association to ChiTietGioHang
	@OneToMany(mappedBy="sanPham")
	private List<ChiTietGioHang> chiTietGioHangs;

	//bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy="sanPham")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	//bi-directional many-to-one association to KhuyenMai
	@OneToMany(mappedBy="sanPham")
	private List<KhuyenMai> khuyenMais;

	//bi-directional many-to-one association to GioHang
	@ManyToOne
	@JoinColumn(name="ID_Gio")
	private GioHang gioHang;

	
}