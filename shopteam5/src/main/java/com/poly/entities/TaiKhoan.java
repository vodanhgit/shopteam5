package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

/**
 * The persistent class for the TaiKhoan database table.
 * 
 */
@Data
@Entity
@Table(name = "TaiKhoan")
public class TaiKhoan implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "MaTaiKhoan")
	private int maTaiKhoan;

	@Column(name = "Email")
	private String email;

	@Column(name = "GioiTinh")
	private boolean gioiTinh;

	@Column(name = "HinhAnh")
	private String hinhAnh;

	@Column(name = "HoTenNguoiDung")
	private String hoTenNguoiDung;

	@Column(name = "MatKhau")
	private String matKhau;

	@Column(name = "Quyen")
	private boolean quyen;

	@Column(name = "TenTaiKhoan")
	private String tenTaiKhoan;

	// bi-directional many-to-one association to GioHang
	@OneToMany(mappedBy = "taiKhoan")
	private List<GioHang> gioHangs;

	// bi-directional many-to-one association to HoaDon
	@OneToMany(mappedBy = "taiKhoan")
	private List<HoaDon> hoaDons;

}