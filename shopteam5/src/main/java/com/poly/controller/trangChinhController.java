package com.poly.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entities.SanPham;
import com.poly.reponstory.SanPhamDao;

@Controller
public class trangChinhController {
	@Autowired
	SanPhamDao dao; // làm việc với bảng Product

	@RequestMapping("index")
	public String index(Model model) {
		List<Object[]> result = dao.findSanPhamWithKhuyenMai();

		for (Object[] row : result) {
			String productName = (String) row[0];
			Integer price = (Integer) row[1];
			String imageUrl = (String) row[2];

			// Perform operations with the retrieved data
			System.out.println("Product Name: " + productName);
			System.out.println("Price: " + price);
			System.out.println("Image URL: " + imageUrl);
			System.out.println("-----------------------------");

			// Add the data to the model for rendering in the view
			model.addAttribute("productName", productName);
			model.addAttribute("price", price);
			model.addAttribute("imageUrl", imageUrl);
		}
		return "index";
	}

	@GetMapping("formaonam")
	public String formaonam(Model model) {
		List<Object[]> aonam = dao.findSanPhamAoNam();

		for (Object[] row : aonam) {
			String anhnam = (String) row[0];
			String tennam = (String) row[1];
			Integer gianam = (Integer) row[2];

			// Add the data to the model for rendering in the view
			model.addAttribute("tennam", tennam);
			model.addAttribute("gianam", gianam);
			model.addAttribute("anhnam", anhnam);
		}
		return "/products/form_aonam";
	}

	@GetMapping("aothunnam")
	public String aothunnam(Model model) {

		List<Object[]> aothunnam = dao.findSanPhamAoThunNam();

		for (Object[] row : aothunnam) {
			String hinhanh = (String) row[0];
			String tensp = (String) row[1];
			Integer gia = (Integer) row[2];

			// Perform operations with the retrieved data
//	            System.out.println("Product Name: " + tensp);
//	            System.out.println("Price: " + gia);
//	            System.out.println("Image URL: " + hinhanh);
//	            System.out.println("-----------------------------");

			// Add the data to the model for rendering in the view
			model.addAttribute("tensp", tensp);
			model.addAttribute("gia", gia);
			model.addAttribute("hinhanh", hinhanh);
		}

		return "/products/ao_thunnam";
	}

	@GetMapping("aopolonam")
	public String aopolonam(Model model) {
		List<Object[]> aopolonam = dao.findSanPhamAoPoloNam();

		for (Object[] row : aopolonam) {
			String hinhpolo = (String) row[0];
			String tenpolo = (String) row[1];
			Integer giapolo = (Integer) row[2];

			// Perform operations with the retrieved data
//	            System.out.println("Product Name: " + tensp);
//	            System.out.println("Price: " + gia);
//	            System.out.println("Image URL: " + hinhanh);
//	            System.out.println("-----------------------------");

			// Add the data to the model for rendering in the view
			model.addAttribute("tenpolo", tenpolo);
			model.addAttribute("giapolo", giapolo);
			model.addAttribute("hinhpolo", hinhpolo);
		}
		
		return "/products/aopolonam";
	}

	@GetMapping("aosominam")
	public String aosominam() {
		return "/products/aosominam";
	}

	@GetMapping("aolennam")
	public String aolennam() {
		return "/products/aolennam";
	}

	@GetMapping("aohoodienam")
	public String aohoodienam() {
		return "/products/aohoodienam";
	}

//	form nữ
	@GetMapping("formaonu")
	public String formaonu() {
		return "/products/form_aonu";
	}

	@GetMapping("aothunu")
	public String aothunu() {
		return "/products/ao_thunnu";
	}

	@GetMapping("aosominu")
	public String aosominu() {
		return "/products/aosominu";
	}

	@GetMapping("aobra")
	public String aobra() {
		return "/products/aobranu";
	}

	@GetMapping("aolennu")
	public String aolennu() {
		return "/products/aolennu";
	}

	@GetMapping("aohoodienu")
	public String aohoodienu() {
		return "/products/aohoodienu";
	}

	@GetMapping("mota")
	public String mota() {
		return "/products/mota";
	}

}