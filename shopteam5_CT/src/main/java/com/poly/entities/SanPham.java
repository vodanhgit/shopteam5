package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@Table(name = "Sanpham")
@NoArgsConstructor
@AllArgsConstructor
public class SanPham implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "Masanpham")
    private Integer maSanPham;
    
    @NotNull(message = "Vui lòng nhập giá")
    @Column(name = "Gia")
    private int gia;
    
    @Min(value = 1, message = "Giá gốc phải lớn hơn 0")
    @Column(name = "Giagoc")
    private Integer giaGoc;
    
    @NotEmpty(message = "Vui lòng nhập hình ảnh")
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
    
    @OneToMany(mappedBy = "sanPham1")
    private List<ChiTietGioHang> chiTietGioHangs;
    
    @OneToMany(mappedBy = "sanPham2")
    private List<HoaDonChiTiet> hoaDonChiTiets;
    
    @OneToMany(mappedBy = "sanPham4")
    private List<PhanLoai> phanLoais;
	
}
