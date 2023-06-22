package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.Query;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "Sanpham")

public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;
	//@NotNull(message = "NotNull.item.maSanPham")
	@Id
	@Column(name = "Masanpham")
	private Integer maSanPham;
	
	

	@Column(name = "Gia")
	private int gia;
	
	@Min(value = 1, message = "giá gốc phải lớn hơn 0")
	@Column(name = "Giagoc")
	private Integer giaGoc;
	
	@NotEmpty(message = "")
	@Column(name = "Hinhanh")
	private String hinhAnh;
	
	@NotBlank(message = "Vui lòng nhập loại")
	@Column(name = "Loai")
	private String loai;
	
	
	@NotBlank(message = "Vui lòng nhập mô tả")
	@Column(name = "Mota")
	private String moTa;
	
	
	@NotBlank(message = "Vui lòng nhập tên sản phẩm")
	@Column(name = "Tensanpham")
	private String tenSanPham;
	
	@NotEmpty(message = "Vui lòng chọn trạng thái")
	@Column(name = "Trangthai")
	private String trangThai;

	
	@Column(name = "Giakhuyenmai")
	private Integer giaKhuyenMai;	
	
	
	// bi-directional many-to-one association to ChiTietGioHang
	@OneToMany(mappedBy = "sanPham1")
	private List<ChiTietGioHang> chiTietGioHangs;

	// bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy = "sanPham2")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	// bi-directional many-to-one association to KhuyenMai
//	@OneToMany(mappedBy = "sanPham3")
//	private List<KhuyenMai> khuyenMais;
	
	@OneToMany(mappedBy = "sanPham4")
	private List<PhanLoai> phanLoais;
	
	
//	@JoinColumn(name = "soLuong")
//	private PhanLoai soLuong;
//	@JoinColumn(name = "size")
//	private PhanLoai size;
	// bi-directional many-to-one association to GioHang
//	@ManyToOne
//	@JoinColumn(name="ID_Gio")
//	private GioHang gioHang2;s
	
}
