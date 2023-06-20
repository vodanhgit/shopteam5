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
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Hoadon")
public class HoaDon implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Mahoadon")
	private int maHoaDon;

	@Column(name="Diachi")
	private String diaChi;

	@Column(name="Tennguoimua")
	private String tenNguoiMua;
	
	@Column(name="Sdt")
	private String sDT;
	
	@Column(name="Ngaydathang")
	private String ngayDatHang;

	@Column(name="Tongtien")
	private int tongTien;

	@Column(name="Trangthai")
	private String trangThai;
	
	@Column(name="Ghichu")
	private String ghiChu;

	//bi-directional many-to-one association to TaiKhoan
	@ManyToOne
	@JoinColumn(name="Mataikhoan")
	private TaiKhoan taiKhoan;

	//bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy="hoaDon")
	private List<HoaDonChiTiet> hoaDonChiTiets;
	
	@ManyToOne
	@JoinColumn(name="Makhuyenmai")
	private KhuyenMai khuyenMai;

	
}