package com.poly.reponstory;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.entities.GioHang;


public interface GioHangDao extends JpaRepository<GioHang, Integer> {

}
