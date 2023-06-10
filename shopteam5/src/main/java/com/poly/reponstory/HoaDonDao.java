package com.poly.reponstory;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.entities.HoaDon;





public interface HoaDonDao extends JpaRepository<HoaDon, Integer> {
//	@Query("select h from hoadon where h.mahoadon")
//	List<HoaDon> getInventoryByCategory();
	
}


