package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "SanPham")
public class SanPham implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer maSanPham;
	String tenSanPham;
	String loai;
	Integer soLuong;
	Integer gia;
	String hinhAnh;
	String mau;
	String size;
	String moTa;
	String giamGia;
	String trangThai;

//// bi-directional many-to-one association to GioHang
//	@OneToMany(mappedBy = "sanPham")
//	List<GioHang> gioHangs;
//
//	// bi-directional many-to-one association to HoaDonChiTiet
//	@OneToMany(mappedBy = "sanPham")
//	List<HoaDonChiTiet> hoaDonChiTiets;
}
