package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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
@Table(name = "ChiTietGioHang")
public class ChiTietGioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int ID_ChiTiet;

	@Column(name="SoLuong")
	private int soLuong;

	//bi-directional many-to-one association to GioHang
	@ManyToOne
	@JoinColumn(name="ID_Gio")
	private GioHang gioHang;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="MaSanPham")
	private SanPham sanPham;

	}