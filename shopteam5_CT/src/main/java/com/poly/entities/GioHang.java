package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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