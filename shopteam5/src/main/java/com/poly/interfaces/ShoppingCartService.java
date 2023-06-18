package com.poly.interfaces;

import java.util.Collection;

import com.poly.entities.ChiTietGioHang;


public interface ShoppingCartService {
	void add(Integer id_ChiTiet, ChiTietGioHang entity);

	void remove(Integer id_ChiTiet);

	void update(Integer id_ChiTiet, int soLuong);

	void clear();

	Collection<ChiTietGioHang> getChiTietGioHangs();

	int getCount();

	double getAmount();
}