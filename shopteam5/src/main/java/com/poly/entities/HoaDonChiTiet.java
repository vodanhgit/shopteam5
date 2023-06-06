package com.poly.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "HoaDonChiTiet")
public class HoaDonChiTiet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaHoaDonChiTiet")
	private int maHoaDonChiTiet;

	@Column(name="DonGia")
	private int donGia;

	@Column(name="SoLuong")
	private int soLuong;

	@Column(name="ThanhTien")
	private int thanhTien;

	//bi-directional many-to-one association to HoaDon
//	@ManyToOne
//	@JoinColumn(name="MaHoaDon")
//	private HoaDon hoaDon;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="MaSanPham")
	private SanPham sanPham;
}
