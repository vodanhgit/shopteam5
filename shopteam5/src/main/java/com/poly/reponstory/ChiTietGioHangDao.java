package com.poly.reponstory;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.ChiTietGioHang;

public interface ChiTietGioHangDao extends JpaRepository<ChiTietGioHang, Integer> {
//	List<ChiTietGioHang> findByFirstnameEquals(String tenSanPham);
	
//	@Query("SELECT o FROM ChiTietGioHang o WHERE o.sanPham1 LIKE ?1")
//	List<ChiTietGioHang> findByID(String maSanPham);
	
//	@Query("SELECT o FROM ChiTietGioHang o WHERE o.sanPham1 LIKE ?1")
//	ChiTietGioHang findByID(String maSanPham);
//	List<ChiTietGioHang> findByGioHang1_id_Gio(int id_Gio);
	@Query("SELECT ct FROM ChiTietGioHang ct WHERE ct.gioHang1.ID_Gio = ?1")
    List<ChiTietGioHang> findByGioHang1_ID_Gio(int ID_Gio);
	
	@Query("SELECT ct FROM ChiTietGioHang ct WHERE ct.gioHang1.ID_Gio = ?1")
    Page<ChiTietGioHang> findByGioHangpageID(int ID_Gio, Pageable pageable);
}
