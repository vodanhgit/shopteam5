package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.Query;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
@Entity
@Table(name = "Sanpham")
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;
	//@NotNull(message = "NotNull.item.maSanPham")
	@Id
	
	@Column(name = "Masanpham")
	private Integer maSanPham;
	
	
	@NotNull(message = "NotNull.item.gia")
	@Column(name = "Gia")
	private int gia;
	
	
	@Column(name = "Hinhanh")
	private String hinhAnh;
	
	@NotBlank(message = "NotBlank.item.loai")
	@Column(name = "Loai")
	private String loai;
	
	/* @NotBlank(message = "NotBlank.item.maKhuyenMai") */
	@Column(name = "Makhuyenmai")
	private String maKhuyenMai;
	
	@NotEmpty(message = "NotEmpty.item.mau")
	@Column(name = "Mau")
	private String mau;
	
	@NotBlank(message = "NotBlank.item.moTa")
	@Column(name = "Mota")
	private String moTa;
	
	@NotEmpty(message = "NotEmpty.item.size")
	@Column(name = "Size")
	private String size;
	
	@NotNull(message = "NotNull.item.soLuong")
	@Column(name = "Soluong")
	private int soLuong;
	
	@NotBlank(message = "NotBlank.item.tenSanPham")
	@Column(name = "Tensanpham")
	private String tenSanPham;
	
	@NotEmpty(message = "NotEmpty.item.trangThai")
	@Column(name = "Trangthai")
	private String trangThai;


	// bi-directional many-to-one association to ChiTietGioHang
	@OneToMany(mappedBy = "sanPham1")
	private List<ChiTietGioHang> chiTietGioHangs;

	// bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy = "sanPham2")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	// bi-directional many-to-one association to KhuyenMai
	@OneToMany(mappedBy = "sanPham3")
	private List<KhuyenMai> khuyenMais;

	// bi-directional many-to-one association to GioHang
	@ManyToOne
	@JoinColumn(name="ID_Gio")
	private GioHang gioHang2;


	
	
	
	
	
}
