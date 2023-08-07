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


@Data
@Entity
@Table(name = "Phanloai")
@AllArgsConstructor
@NoArgsConstructor
public class PhanLoai implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name = "Maphanloai")
	private Integer maPhanLoai;
//	@NotEmpty(message = "Vui lòng nhập số lượng")
	@Column(name = "Soluong")
	private Integer soLuong;
	//@NotBlank(message = "Vui lòng nhập màu")
	@Column(name = "Mau")
	private String mau;
	//@NotBlank(message = "Vui lòng nhập size")
	@Column(name = "Size")
	private String size;
	
	@ManyToOne
	//@NotBlank(message = "Vui lòng nhập size")
	@JoinColumn(name="Masanpham")
	private SanPham sanPham4;
}
