package com.poly.reponstory;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.entities.KhuyenMai;

public interface KhuyenMaiDao extends JpaRepository<KhuyenMai, Integer>{
	@Query("SELECT km FROM KhuyenMai km WHERE km.maKhuyenMai = :maKhuyenMai")
	KhuyenMai findByMaKhuyenMai(@Param("maKhuyenMai") String maKhuyenMai);
}
