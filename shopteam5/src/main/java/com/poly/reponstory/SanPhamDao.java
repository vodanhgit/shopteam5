package com.poly.reponstory;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.SanPham;

public interface SanPhamDao extends JpaRepository<SanPham, Integer> {

	// câu lệnh lấy sản phẩm km
	@Query("SELECT sp.tenSanPham AS ProductName, sp.gia AS Price, sp.hinhAnh AS Image\r\n" + "FROM SanPham sp\r\n"
			+ "INNER JOIN KhuyenMai km ON sp.maSanPham = km.sanPham3.maSanPham")
	List<Object[]> findSanPhamWithKhuyenMai();

	// Tất cả áo nam
	@Query("SELECT tenSanPham,gia,hinhAnh\r\n" + "FROM SanPham\r\n" + "WHERE tenSanPham Like '%Nam%'")
	List<Object[]> findSanPhamAoNam();

	// áo thun nam
	@Query("SELECT sp.hinhAnh AS Image, sp.tenSanPham AS ProductName, sp.gia AS Price " + "FROM SanPham sp "
			+ "WHERE sp.loai = 'áo thun nam'")
	List<Object[]> findSanPhamAoThunNam();

	// áo polo nam
	@Query("SELECT sp.hinhAnh AS Image, sp.tenSanPham AS ProductName, sp.gia AS Price " + "FROM SanPham sp "
			+ "WHERE sp.loai = 'áo polo nam'")
	List<Object[]> findSanPhamAoPoloNam();

}
