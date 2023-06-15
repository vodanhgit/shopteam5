package com.poly.reponstory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.ChiTietGioHang;


public interface ChiTietGioHangDao extends JpaRepository<ChiTietGioHang, Integer> {
//	List<ChiTietGioHang> findByFirstnameEquals(String tenSanPham);
	
	@Query("SELECT o FROM ChiTietGioHang o WHERE o.sanPham1 LIKE ?1")
	List<ChiTietGioHang> findByID(String maSanPham);
	
//	@Query("SELECT o FROM ChiTietGioHang o WHERE o.sanPham1 LIKE ?1")
//	ChiTietGioHang findByID(String maSanPham);
}
