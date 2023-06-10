package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

/**
 * The persistent class for the TaiKhoan database table.
 * 
 */
@Data
@Entity
@Table(name = "Taikhoan")
public class TaiKhoan implements Serializable {
	
	@Id
	@Column(name = "Mataikhoan")
	private int maTaiKhoan;

	@Column(name = "Email")
	private String email;

	@Column(name = "Gioitinh")
	private boolean gioiTinh;

	@Column(name = "Hinhanh")
	private String hinhAnh;

	@Column(name = "Hotennguoidung")
	private String hoTenNguoiDung;

	@Column(name = "Matkhau")
	private String matKhau;

	@Column(name = "Quyen")
	private boolean quyen;

	@Column(name = "Tentaikhoan")
	private String tenTaiKhoan;

	
	// bi-directional many-to-one association to GioHang
	@OneToMany(mappedBy = "taiKhoan")
	private List<GioHang> gioHangs;

	// bi-directional many-to-one association to HoaDon
	@OneToMany(mappedBy = "taiKhoan")
	private List<HoaDon> hoaDons;

}