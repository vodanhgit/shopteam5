package com.poly.reponstory;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.HoaDon;





public interface HoaDonDao extends JpaRepository<HoaDon, Integer> {
	@Query("SELECT h FROM HoaDon h WHERE h.trangThai LIKE %?1% OR h.tenNguoiMua LIKE %?1%")
	Page<HoaDon> findAllByTrangThai(String trangThai, Pageable pageable);

	Page<HoaDon> findByMaHoaDon(int maHoaDon, Pageable pageable);
	Page<HoaDon> findAllByTaiKhoanMaTaiKhoan(int maTaiKhoan, Pageable pageable);
//	@Query("SELECT h FROM HoaDon h JOIN h.sanPham sp WHERE (h.diaChi LIKE %?1% OR h.tenNguoiMua LIKE %?1%) AND (sp.tenSanPham LIKE %?2% OR sp.maSanPham LIKE %?2%)")
//	Page<HoaDon> findAllByDiaChi(String diaChi, String tenSanPham, Pageable pageable);

	    
	
	    @Query("SELECT h FROM HoaDon h WHERE h.diaChi LIKE %?1% OR h.tenNguoiMua LIKE %?1%")
	    Page<HoaDon> findAllByDiaChi(String diaChi, Pageable pageable);
	    @Query("SELECT h FROM HoaDon h WHERE (:ngayDatHang IS NULL OR h.ngayDatHang = :ngayDatHang)")
	    Page<HoaDon> findAllByNgay(@Param("ngayDatHang") String ngayDatHang, Pageable pageable);
	    
	    @Query("SELECT hd FROM HoaDon hd WHERE hd.maHoaDon = :maHoaDon")
	    HoaDon findByMaHoaDon(int maHoaDon);
	    
	    @Query("SELECT h FROM HoaDon h WHERE h.ngayDatHang >= :startDate AND h.ngayDatHang <= :endDate")
	    List<HoaDon> thongKeHoaDonTheoNgay(@Param("startDate") String startDate, @Param("endDate") String endDate);
	    
	    @Query("SELECT h FROM HoaDon h WHERE h.ngayDatHang >= :startDate AND h.ngayDatHang <= :endDate AND h.trangThai = :trangThai")
	    List<HoaDon> thongKeHoaDonTheoNgayTT(@Param("startDate") String startDate, @Param("endDate") String endDate, @Param("trangThai") String trangThai);
//	    @Query("SELECT h.ngayDatHang FROM HoaDon h WHERE h.ngayDatHang BETWEEN :ngayBatDau AND :ngayKetThuc GROUP BY h.ngayDatHang ORDER BY SUM(h.tongTien) DESC")
//	    HoaDon timNgayCoDoanhThuCaoNhat(@Param("ngayBatDau") String ngayBatDau, @Param("ngayKetThuc") String ngayKetThuc);
	    
}


