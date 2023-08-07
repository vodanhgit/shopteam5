package com.poly.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.entities.TaiKhoan;
import com.poly.reponstory.TaiKhoanDao;

@Controller
public class UserController {

	@Autowired
	TaiKhoanDao taikhoandao;
	
	@Autowired
	ServletContext app;

	@GetMapping("/admin/account")
	public String account(Model model, @RequestParam("m") Optional<Integer> m) {
		Pageable pageable = PageRequest.of(m.orElse(0), 4);
		Page<TaiKhoan> page = taikhoandao.findAll(pageable);
		model.addAttribute("itemTaiKhoan", page);
		TaiKhoan item = new TaiKhoan();
		model.addAttribute("item", item);
		List<TaiKhoan> items = page.getContent();
		model.addAttribute("items", items);
		return "admin/accounts/account";
	}

	@RequestMapping("/admin/create-user")
	public String create(@Validated @ModelAttribute("item") TaiKhoan item, BindingResult result,
			@RequestParam("photo_file") MultipartFile img, Model model) throws IllegalStateException, IOException {
		String filename = img.getOriginalFilename();

		if (result.hasErrors()) {
			model.addAttribute("message", "Vui lòng sủa các lỗi sau: ");
			System.out.println("lỗi");
		} else {
			if (filename.isEmpty()) {
				List<TaiKhoan> items = taikhoandao.findAll();
				item.setMaTaiKhoan(items.size() + 1);
				item.setNgaySinh("01-01-2000");
				item.setHinhAnh("user.png");
				taikhoandao.save(item);
			} else {
				File file = new File(app.getRealPath("/images/" + filename));
				img.transferTo(file);
				List<TaiKhoan> items = taikhoandao.findAll();
				item.setMaTaiKhoan(items.size() + 1);
				item.setNgaySinh("01-01-2000");
				item.setHinhAnh(filename);
				taikhoandao.save(item);

			}
		}
		
		
		return "redirect:/admin/account";
	}
	
	@RequestMapping("/admin/edit-account/{id}")
	public String editAccount(@PathVariable("id") String mataikhoan) {
		Integer idtaikhoan = Integer.parseInt(mataikhoan);
		TaiKhoan taikhoan = taikhoandao.findById(idtaikhoan).get();
		if (taikhoan.isQuyen()) {
			taikhoan.setQuyen(false);
		} else {
			taikhoan.setQuyen(true);
		}
		taikhoandao.save(taikhoan);

		return "redirect:/admin/account";
	}
}
