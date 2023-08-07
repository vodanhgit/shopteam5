package com.poly.entities;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
	@Column(name = "Mahoadon")
	private int maHoaDon;

	@Column(name = "Diachi")
	private String diaChi;

	@Column(name = "Tennguoimua")
	private String tenNguoiMua;

	@Column(name = "Sdt")
	private String sdt;

	@Column(name = "Ngaydathang")
	private String ngayDatHang;

	@Column(name = "Tongtien")
	private int tongTien;

	@Column(name = "Trangthai")
	private String trangThai;

	@Column(name = "Ghichu")
	private String ghiChu;

	// bi-directional many-to-one association to TaiKhoan
	@ManyToOne
	@JoinColumn(name = "Mataikhoan")
	private TaiKhoan taiKhoan;

	// bi-directional many-to-one association to HoaDonChiTiet
	@OneToMany(mappedBy = "hoaDon")
	private List<HoaDonChiTiet> hoaDonChiTiets;

	@ManyToOne
	@JoinColumn(name = "Makhuyenmai")
	private KhuyenMai khuyenMai;

	@Override
	public String toString() {
		return "HoaDon [Mahoadon=" + maHoaDon + ", Diachi=" + diaChi + ",Tennguoimua=" + tenNguoiMua + ",Sdt=" + sdt
				+ ", Ngaydathang=" + ngayDatHang + ", Tongtien=" + tongTien + ", Trangthai=" + trangThai + ", Ghichu="
				+ ghiChu + "]";
	}

}