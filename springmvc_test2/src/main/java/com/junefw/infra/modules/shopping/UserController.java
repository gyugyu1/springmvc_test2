package com.junefw.infra.modules.shopping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.code.CodeVo;

@Controller
public class UserController {

	@Autowired
	UserServiceImpl service;
	
	@RequestMapping(value = "/shopping/userlist")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String userlist(Model model,UserVo vo) throws Exception {

		List<User> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "shopping/userlist";
	}
}
