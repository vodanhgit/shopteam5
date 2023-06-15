package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;


/**
 * The persistent class for the HoaDonChiTiet database table.
 * 
 */
@Data
@Entity
@Table(name = "Hoadonchitiet")
public class HoaDonChiTiet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Mahoadonchitiet")
	private int maHoaDonChiTiet;

	@Column(name="Dongia")
	private int donGia;

	@Column(name="Soluong")
	private int soLuong;

	@Column(name="Thanhtien")
	private int thanhTien;

	//bi-directional many-to-one association to HoaDon
	@ManyToOne
	@JoinColumn(name="MaHoaDon")
	private HoaDon hoaDon;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="MaSanPham")
	private SanPham sanPham2;

	

}