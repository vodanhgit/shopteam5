package com.poly.reponstory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.TaiKhoan;



public interface TaiKhoanDao extends JpaRepository<TaiKhoan, Integer>{
	@Query("SELECT t FROM TaiKhoan t WHERE t.tenTaiKhoan = :tenTaiKhoan")
    TaiKhoan findByTenTaiKhoanThongThuong(@Param("tenTaiKhoan") String tenTaiKhoan);
	@Query("SELECT tk FROM TaiKhoan tk WHERE tk.tenTaiKhoan = :tenTaiKhoan")
    List<TaiKhoan> findByTenTaiKhoan(@Param("tenTaiKhoan") String tenTaiKhoan);
}
