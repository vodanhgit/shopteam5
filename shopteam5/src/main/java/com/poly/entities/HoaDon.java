package com.poly.entities;
import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "HoaDon")
public class HoaDon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="MaHoaDon")
	private int maHoaDon;

	@Column(name="DiaChi")
	private String diaChi;

	@Column(name="NgayDatHang")
	private String ngayDatHang;

	@Column(name="TongTien")
	private int tongTien;

	@Column(name="TrangThai")
	private String trangThai;

	//bi-directional many-to-one association to TaiKhoan
	@ManyToOne
	@JoinColumn(name="MaTaiKhoan")
	private TaiKhoan taiKhoan;

	//bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy="hoaDon")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	
}