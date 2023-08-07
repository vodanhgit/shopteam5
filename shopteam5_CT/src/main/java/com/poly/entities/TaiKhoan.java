package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * The persistent class for the TaiKhoan database table.
 * 
 */
@Data
@Entity
@Table(name = "Taikhoan")
@AllArgsConstructor
@NoArgsConstructor
public class TaiKhoan implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Mataikhoan")
	private Integer maTaiKhoan;

	@Column(name = "Email")
	private String email;

	@Column(name = "Gioitinh")
	private boolean gioiTinh;

	@Column(name = "Hinhanh")
	private String hinhAnh;

	@Column(name = "Hotennguoidung")
	private String hoTenNguoiDung;

	
//	@Min(value = 8, message = "Độ dài ít nhất 8 kí tự")
	@Column(name = "Matkhau")
	private String matKhau;

	@Column(name = "Quyen")
	private boolean quyen;


	@Column(name="Sodienthoai")
	private String soDienThoai;
	
	@Column(name="Ngaysinh")
	private String ngaySinh;
	
	@Column(name = "Tentaikhoan")
	private String tenTaiKhoan;

	// bi-directional many-to-one association to GioHang
	@OneToMany(mappedBy = "taiKhoan")
	private List<GioHang> gioHangs;

	// bi-directional many-to-one association to HoaDon
	@OneToMany(mappedBy = "taiKhoan")
	private List<HoaDon> hoaDons;

}