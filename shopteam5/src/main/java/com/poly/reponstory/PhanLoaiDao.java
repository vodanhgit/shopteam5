package com.poly.reponstory;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.PhanLoai;

public interface PhanLoaiDao extends JpaRepository<PhanLoai, Integer>{
	@Query("SELECT p FROM PhanLoai p WHERE p.sanPham4.maSanPham = :maSanPham")
    List<PhanLoai> findByMaSanPham(@Param("maSanPham") Integer maSanPham);
	
	@Query("SELECT p FROM PhanLoai p WHERE p.sanPham4.maSanPham = :maSanPham")
    PhanLoai findByMaSanPham1(@Param("maSanPham") Integer maSanPham);
	
	@Query("SELECT p.size FROM PhanLoai p WHERE p.sanPham4.maSanPham = :maSanPham GROUP BY p.size")
    List<String> findDistinctSizesByMaSanPham(@Param("maSanPham") Integer maSanPham);
	
	@Query("SELECT pl FROM PhanLoai pl WHERE pl.sanPham4.maSanPham = :maSanPham AND pl.size = :size")
    List<PhanLoai> findByMaSanPhamAndSize(@Param("maSanPham") Integer maSanPham, @Param("size") String size);
	
	@Query("SELECT pl FROM PhanLoai pl WHERE pl.sanPham4.maSanPham = :maSanPham AND pl.size = :size AND pl.mau = :mau")
	PhanLoai findByMaSanPhamAndSizeAndMau(@Param("maSanPham") Integer maSanPham, @Param("size") String size, @Param("mau") String mau);
}
