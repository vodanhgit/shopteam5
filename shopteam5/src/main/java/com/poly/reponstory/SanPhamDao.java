package com.poly.reponstory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.SanPham;

public interface SanPhamDao extends JpaRepository<SanPham, Integer> {

	// câu lệnh lấy sản phẩm km
	@Query("SELECT sp.tenSanPham AS ProductName, sp.gia AS Price, sp.hinhAnh AS Image\r\n" + "FROM SanPham sp\r\n"
			+ "INNER JOIN KhuyenMai km ON sp.maSanPham = km.sanPham3.maSanPham")
	List<Object[]> findSanPhamWithKhuyenMai();
	
	// áo thun nam
	@Query("SELECT s FROM SanPham s WHERE s.loai = 'áo thun nam'")
	List<SanPham> findSanPhamAoThunNam();

	// áo polo nam
	@Query("SELECT s FROM SanPham s WHERE s.loai = 'áo polo nam'")
	List<SanPham> findSanPhamAoPoloNam();

	// áo sơ mi nam
//	@Query("SELECT sp FROM SanPham sp WHERE sp.loai LIKE N'%Áo sơ mi nam'")
//	List<SanPham> findSanPhamByLoaiAoSoMiNam();

	// áo len nam
	@Query("SELECT s FROM SanPham s WHERE s.loai = 'Áo len nam'")
	List<SanPham> findSanPhamAolenNam();

	// áo hoodie nam
	@Query("SELECT s FROM SanPham s WHERE s.loai = 'Áo hoodie nam'")
	List<SanPham> findSanPhamAoHoodieNam();
	
	@Query("SELECT sp FROM SanPham sp WHERE sp.loai = :loai")
	List<SanPham> findByLoai(@Param("loai") String loai);
	
	
	
	@Query("SELECT sp FROM SanPham sp WHERE sp.loai LIKE '%nam'")
	List<SanPham> findSanPhamByLoaiNam();
	 @Query("SELECT DISTINCT sp.tenSanPham FROM SanPham sp WHERE sp.loai LIKE '%nam'")
	    List<String> findDistinctTenSanPhamByLoaiNam();
	 
//	 @Query("SELECT DISTINCT sp.tenSanPham FROM SanPham sp WHERE sp.loai LIKE '%nam'")
//	    List<String> findSanPhamByLoaiNam();
//	 @Query("SELECT MIN(sp) FROM SanPham sp WHERE sp.tenSanPham IN " +
//	           "(SELECT sp2.tenSanPham FROM SanPham sp2 GROUP BY sp2.tenSanPham " +
//	           "HAVING COUNT(DISTINCT sp2.mau) > 1 AND COUNT(DISTINCT sp2.size) > 1 " +
//	           "AND COUNT(DISTINCT sp2.trangThai) > 1)")
//	 List<SanPham> findSanPhamByLoaiNam();
	 
//	 @Query("SELECT sp FROM SanPham sp WHERE sp.loai LIKE '%nam' " +
//	           "GROUP BY sp.tenSanPham")
//	    List<SanPham> findSanPhamByLoaiNam();
//	 @Query("SELECT s FROM SanPham s WHERE s.loai LIKE '%nam' GROUP BY s.loai, s.size, s.mau")
//	    List<SanPham> findSanPhamByLoaiNam();
	 
//	 @Query("SELECT s FROM SanPham s WHERE s.tenSanPham LIKE '%nam' GROUP BY s.loai, s.tenSanPham, s.maSanPham, s.gia, s.hinhAnh, s.maKhuyenMai, s.mau, s.moTa, s.size, s.soLuong, s.trangThai")
//	 List<SanPham> findSanPhamByLoaiNam();
	 
//	 @Query("SELECT s FROM SanPham s WHERE s.loai LIKE '%nam' AND (s.loai, s.size, s.mau) IN " +
//	            "(SELECT s2.loai, s2.size, s2.mau FROM SanPham s2 GROUP BY s2.loai, s2.size, s2.mau)")
//	    List<SanPham> findSanPhamByLoaiNam();
//	List<SanPham> findByLoaiLike(String loai);

	
	////////////////
	
//	// áo thun nam
//		@Query("SELECT s FROM SanPham s WHERE s.loai = 'Áo thun nữ'")
//		List<SanPham> findSanPhamAoThunNu();
//		
//	//áo bra
//		@Query("SELECT s FROM SanPham s WHERE s.loai = 'Áo Bra nữ'")
//		List<SanPham> finSanPhamNuBra();
	 @Query("SELECT sp FROM SanPham sp WHERE sp.maSanPham = :maSanPham")
	    List<SanPham> findByMaSanPham(Integer maSanPham);
	 @Query("SELECT sp FROM SanPham sp WHERE sp.maSanPham = :maSanPham")
	    SanPham findByMaSanPham1(Integer maSanPham);
	 @Query("SELECT sp FROM SanPham sp WHERE sp.tenSanPham = :tenSanPham")
	    List<SanPham> findByTenSanPham(String tenSanPham);
	 @Query("SELECT sp FROM SanPham sp WHERE sp.tenSanPham = :tenSanPham")
	    SanPham findByTenSanPham1(String tenSanPham);
	
	 @Query("SELECT sp FROM SanPham sp WHERE sp.tenSanPham = :tenSanPham AND sp.size = :size")
	    SanPham findByTenSanPhamAndSize(@Param("tenSanPham") String tenSanPham, @Param("size") String size);
	 @Query("SELECT sp.mau FROM SanPham sp WHERE sp.maSanPham = :maSanPham AND sp.size = :size")
	 SanPham findMauByMaSanPhamAndSize(@Param("maSanPham") Integer maSanPham, @Param("size") String size);
	 
	 @Query("SELECT s.loai AS category, s.maSanPham AS productId, s.tenSanPham AS productName, " +
	            "COUNT(hdt) AS totalSales, SUM(hdt.thanhTien) AS totalRevenue " +
	            "FROM SanPham s " +
	            "JOIN s.hoaDonChiTiets hdt " +
	            "GROUP BY s.loai, s.maSanPham, s.tenSanPham " +
	            "ORDER BY totalSales DESC")
	    List<Object[]> findTop5BestSellingProductsByCategory();
}
