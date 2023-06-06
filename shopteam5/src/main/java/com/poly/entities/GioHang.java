package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "GioHang")
public class GioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	Integer id;
	Integer soLuong;

	// bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name = "MaSanPham")
	private SanPham sanPham;

	// bi-directional many-to-one association to TaiKhoan
//	@ManyToOne
//	@JoinColumn(name = "MaTaiKhoan")
//	 TaiKhoan taiKhoan;
}
