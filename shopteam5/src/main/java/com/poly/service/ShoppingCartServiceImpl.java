package com.poly.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.poly.entities.ChiTietGioHang;
import com.poly.interfaces.ShoppingCartService;

@SessionScope
@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	Map<Integer, ChiTietGioHang> map = new HashMap<>();

	@Override
	public void add(Integer id_ChiTiet, ChiTietGioHang entity) {
		if (map.get(id_ChiTiet) != null) {
			this.update(id_ChiTiet, entity.getSoLuong() + 1);
		} else {
			entity.setSoLuong(1);
			map.put(id_ChiTiet, entity);
		}
	}

	@Override
	public void remove(Integer id) {
		map.remove(id);
	}

	@Override
	public void update(Integer id_ChiTiet, int soLuong) {
		ChiTietGioHang chiTietGioHang = map.get(id_ChiTiet);
	    if (chiTietGioHang != null) {
	        chiTietGioHang.setSoLuong(soLuong);    
	    }
	}

	@Override
	public void clear() {
		map.clear();
	}

	@Override
	public Collection<ChiTietGioHang> getChiTietGioHangs() {
		return map.values();
	}

	@Override
	public int getCount() {
		int count = 0;
		Set<Integer> set = map.keySet();
		for (Integer i : set) {
			count++;
		}
		return count;
	}

	@Override
	public double getAmount() {
		double amount = 0;
		Set<Integer> set = map.keySet();
		for (Integer i : set) {
			amount += map.get(i).getSoLuong() * map.get(i).getGia();
		}
		return amount;
	}
}