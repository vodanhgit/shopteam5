package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.SanPham;
import com.poly.reponstory.SanPhamDao;

@Controller
public class ProductController {
	@Autowired
	SanPhamDao spdao;

	@Autowired
	ServletContext app;

	@RequestMapping("/admin/product")
	public String product(Model model, Optional<Integer> m) {

		Pageable pageable = PageRequest.of(m.orElse(0), 5);

		Page<SanPham> itemsPage = spdao.findAll(pageable);

		SanPham item = new SanPham();
		model.addAttribute("item", item);

		List<SanPham> items = itemsPage.getContent();
		model.addAttribute("items", items);

		// Check if the quantity in the "phanloai" classification is 0

		return "admin/products/product";
	}

	// sản phẩm edit
	@RequestMapping("/admin/edit/{maSanPham}")
	public String editt(Model model, @PathVariable("maSanPham") Integer maSanPham) {
		SanPham item = spdao.findById(maSanPham).get();

		model.addAttribute("item", item);

		List<SanPham> items = spdao.findAll();
		model.addAttribute("items", items);

		return "admin/products/product";
	}

	int tong = 0;

	@RequestMapping("/admin/create-product")
	public String createsp(@Validated @ModelAttribute("item") SanPham item, BindingResult result,
			@RequestParam("file") MultipartFile img, Model model) throws IllegalAccessException, IOException {

		if (img.isEmpty()) {
			model.addAttribute("messages_img", "Vui lòng chọn hình ảnh");

		}

		else {
			String filename = img.getOriginalFilename();
			File file = new File(app.getRealPath("/images/products/large/" + filename));
			img.transferTo(file);
			tong += item.getGiaGoc() - item.getGiaGoc() * ((double) item.getGiaKhuyenMai() / 100);
			List<SanPham> items = spdao.findAll();
			item.setGia(tong);
			item.setMaSanPham(items.size() + 1);
			item.setHinhAnh(filename);

			// model.addAttribute("messages", "Chúc mừng ban nhập đúng");

			spdao.save(item);
		}

		return "admin/products/product";
		// return "redirect:product";

	}

	@RequestMapping("/admin/update-product")
	public String updatesp(@Validated @ModelAttribute("item") SanPham item, BindingResult result,
			@RequestParam("file") MultipartFile img, Model model) throws IllegalAccessException, IOException {

		if (img.isEmpty()) {
			model.addAttribute("messages_img", "Vui lòng chọn hình ảnh");

		}

		else {
			String filename = img.getOriginalFilename();
			File file = new File(app.getRealPath("/images/products/large/" + filename));
			img.transferTo(file);
			item.setHinhAnh(filename);
			spdao.save(item);
		}
		return "redirect:/admin/product";
	}

	@ModelAttribute("list_trangthai")
	public Map<String, String> getSanPham() {
		Map<String, String> map = new HashMap<>();
		List<SanPham> sanphamitems = spdao.findAll();
		for (SanPham item : sanphamitems) {
			map.put(item.getTrangThai(), item.getTrangThai());
		}
		return map;
	}
}
