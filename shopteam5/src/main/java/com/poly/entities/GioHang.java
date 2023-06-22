package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;


/**
 * The persistent class for the GioHang database table.
 * 
 */
@Data
@Entity
@Table(name = "Giohang")
public class GioHang implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ID_Gio;
	
	
	//bi-directional many-to-one association to ChiTietGioHang
	@OneToMany(mappedBy="gioHang1")
	private List<ChiTietGioHang> chiTietGioHangs;

	//bi-directional many-to-one association to TaiKhoan
	@ManyToOne
	@JoinColumn(name="Mataikhoan")
	private TaiKhoan taiKhoan;

	//bi-directional many-to-one association to SanPham
//	@OneToMany(mappedBy="gioHang2")
//	private List<SanPham> sanPhams;

	
	@Override
	public String toString() {
		return "GioHang [ID_Gio=" + ID_Gio + "]";
	}
}