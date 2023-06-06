package com.poly.reponstory;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.SanPham;

public interface SanPhamDao extends JpaRepository<SanPham, Integer> {
	
}
