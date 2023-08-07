package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Entity
@Table(name = "Khuyenmai")
@AllArgsConstructor
@NoArgsConstructor
public class KhuyenMai implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Makhuyenmai")
	private String maKhuyenMai;

	@Column(name="Tenkhuyenmai")
	private String tenKhuyenMai;
	
	@Column(name="GiaKM")
	private int giaKM;

	@Column(name="Ngaybatdau")
	private String ngayBatDau;
	
	@Column(name="Ngayketthuc")
	private String ngayKetThuc;
	
	@Column(name="Mota")
	private String moTa;

	//bi-directional many-to-one association to SanPham
	
	
	@OneToMany(mappedBy="khuyenMai")
	private List<HoaDon> hoaDonKhuyenMais;

	
}