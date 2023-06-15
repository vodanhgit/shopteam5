package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Data;


/**
 * The persistent class for the ChiTietGioHang database table.
 * 
 */
@Data
@Entity
@Table(name = "Chitietgiohang")
public class ChiTietGioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Id_chitiet")
	private int id_ChiTiet;
	
	@Column(name="Soluong")
	private int soLuong;
	
	@Column(name="Gia")
	private int gia;

	@Column(name="Mau")
	private String mau;

	@Column(name="Size")
	private String size;
	
	
	
	
	//bi-directional many-to-one association to GioHang
	@ManyToOne
	@JoinColumn(name="ID_Gio")
	private GioHang gioHang1;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="Masanpham")
	private SanPham sanPham1;

	@Override
	public String toString() {
		return "ChiTietGioHang [id_ChiTiet=" + id_ChiTiet + ", soLuong=" + soLuong + ", gia=" + gia + ", mau=" + mau
				+ ", size=" + size + "]";
	}
	}