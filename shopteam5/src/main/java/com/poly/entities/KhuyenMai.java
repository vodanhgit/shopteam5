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


@Data
@Entity
@Table(name = "Khuyenmai")
public class KhuyenMai implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="Makhuyenmai")
	private int maKhuyenMai;

	@Column(name="GiaKM")
	private int giaKM;

	@Column(name="Mota")
	private String moTa;

	//bi-directional many-to-one association to SanPham
	@ManyToOne
	@JoinColumn(name="MaSanPham")
	private SanPham sanPham3;

	
}