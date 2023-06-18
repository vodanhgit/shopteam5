package com.poly.reponstory;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.HoaDon;





public interface HoaDonDao extends JpaRepository<HoaDon, Integer> {
	  @Query("SELECT h FROM HoaDon h WHERE h.trangThai LIKE %?1%")
	    Page<HoaDon> findAllByTrangThai(String trangThai, Pageable pageable);
	    
	    @Query("SELECT h FROM HoaDon h WHERE h.diaChi LIKE %?1%")
	    Page<HoaDon> findAllByDiaChi(String diaChi, Pageable pageable);

	    @Query("SELECT h FROM HoaDon h WHERE (:ngayDatHang IS NULL OR h.ngayDatHang = :ngayDatHang)")
	    Page<HoaDon> findAllByNgay(@Param("ngayDatHang") String ngayDatHang, Pageable pageable);
	    
	    @Query("SELECT hd FROM HoaDon hd WHERE hd.maHoaDon = :maHoaDon")
	    HoaDon findByMaHoaDon(int maHoaDon);
	
}


