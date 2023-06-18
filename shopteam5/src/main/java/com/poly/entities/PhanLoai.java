package com.poly.entities;

import java.io.Serializable;
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
@Table(name = "Phanloai")
public class PhanLoai implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "Maphanloai")
	private Integer maPhanLoai;
	
	@Column(name = "Soluong")
	private String soLuong;
	
	@Column(name = "Mau")
	private String mau;
	
	@Column(name = "Size")
	private String size;
	
	@ManyToOne
	@JoinColumn(name="Masanpham")
	private SanPham sanPham4;
}
