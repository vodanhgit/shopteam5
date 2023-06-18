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
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
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

	@Id
	@Column(name = "Mataikhoan")
	private Integer maTaiKhoan;

	@Column(name = "Email")
//	@NotBlank(message = "{NotBlank.item.email}")
//	@Email(message = "{Email.item.email}")
	private String email;

	@Column(name = "Gioitinh")
	private boolean gioiTinh;

	@Column(name = "Hinhanh")
	private String hinhAnh;

	@Column(name = "Hotennguoidung")
//	@NotBlank(message = "{NotBlank.item.hoTenNguoiDung}")
	private String hoTenNguoiDung;

//	@NotBlank(message = "NotBlank.item.matKhau")
//	@Min(value = 8, message = "Min.item.matKhau")
	@Column(name = "Matkhau")
	private String matKhau;

	@Column(name = "Quyen")
	private boolean quyen;


	@Column(name="Sodienthoai")
	private String soDienThoai;
	
	@Column(name="Ngaysinh")
	private String ngaySinh;
	@Column(name = "Tentaikhoan")
//	@NotBlank(message="NotBlank.item.tenTaiKhoan")
	private String tenTaiKhoan;

	// bi-directional many-to-one association to GioHang
	@OneToMany(mappedBy = "taiKhoan")
	private List<GioHang> gioHangs;

	// bi-directional many-to-one association to HoaDon
	@OneToMany(mappedBy = "taiKhoan")
	private List<HoaDon> hoaDons;

}