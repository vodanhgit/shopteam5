package com.poly.reponstory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.GioHang;
	
	
	public interface GioHangDao extends JpaRepository<GioHang, Integer> {
		@Query("SELECT gh FROM GioHang gh WHERE gh.taiKhoan.maTaiKhoan = :mataikhoan")
		GioHang findByMataikhoan(@Param("mataikhoan") int mataikhoan);
	}
