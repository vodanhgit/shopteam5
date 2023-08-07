package com.poly.reponstory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.HoaDon;
import com.poly.entities.HoaDonChiTiet;

public interface HoaDonChiTietDao extends JpaRepository<HoaDonChiTiet, Integer> {
	@Query("SELECT SUM(h.soLuong) FROM HoaDonChiTiet h WHERE h.hoaDon = :hoaDon")
    Integer tinhTongSoLuongSanPhamTrongHoaDon(@Param("hoaDon") HoaDon hoaDon);
	@Query("SELECT SUM(h.soLuong) FROM HoaDonChiTiet h WHERE h.hoaDon.maHoaDon = :maHoaDon")
	Integer tinhTongSoLuongTheoMaHoaDon(@Param("maHoaDon") int maHoaDon);
	@Query("SELECT h FROM HoaDonChiTiet h WHERE h.hoaDon.maHoaDon = :maHoaDon")
    Page<HoaDonChiTiet> findByMaHoaDon(@Param("maHoaDon") int maHoaDon, Pageable pageable);
	
}
