package com.poly.entities;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
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
	@NotEmpty(message = "Vui lòng nhập số lượng")
	@Column(name = "Soluong")
	private Integer soLuong;
	@NotBlank(message = "Vui lòng nhập màu")
	@Column(name = "Mau")
	private String mau;
	@NotBlank(message = "Vui lòng nhập size")
	@Column(name = "Size")
	private String size;
	
	@ManyToOne
	@NotBlank(message = "Vui lòng nhập size")
	@JoinColumn(name="Masanpham")
	private SanPham sanPham4;
}