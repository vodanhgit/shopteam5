package com.poly.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * The persistent class for the HoaDonChiTiet database table.
 * 
 */
@Data
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Hoadonchitiet")
public class HoaDonChiTiet implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Mahoadonchitiet")
	private int maHoaDonChiTiet;
	
	@Column(name="Mau")
	private String mau;
	
	@Column(name="Size")
	private String size;
	
	@Column(name="Dongia")
	private int donGia;

	@Column(name="Soluong")
	private int soLuong;

	@Column(name="Thanhtien")
	private int thanhTien;

	//bi-directional many-to-one association to HoaDon
	@ManyToOne
	@JoinColumn(name="Mahoadon")
	private HoaDon hoaDon;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="Masanpham")
	private SanPham sanPham2;

	@Override
	public String toString() {
		return "Hoadonchitiet [Mahoadonchitiet=" + maHoaDonChiTiet + ", Mau=" + mau + ", Size=" + size + ", Dongia=" + donGia
				+ ", Soluong=" + soLuong + ", Thanhtien=" + thanhTien + "]";
	}


	

}