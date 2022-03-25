package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {

	
	
	
	@Autowired
	CodeServiceImpl service;
	
// infrCodeGroup
	@RequestMapping(value = "/code/codeGroupList" )
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count!=0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			
		}
			//model.addAttribute("vo",vo)
		
		return "code/codeGroupList";
	}
	
	
	
	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo) throws Exception {
		System.out.println("shvalue:" + vo.getShValue());
		return "code/codeGroupForm";
		
	}
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(CodeVo vo,Code dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);

		
		redirectAttributes.addAttribute("ifcgSeq",dto.getIfcgSeq());
		redirectAttributes.addAttribute("shValue",vo.getShValue());
		redirectAttributes.addAttribute("shOption",vo.getShOption());
		return "redirect:/code/codeGroupView";
	}
	
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item",rt);
		
		
		return "code/codeGroupView";
	}
	
	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt",rt);
		
		return "code/codeGroupForm2";
		
		
	}
	
	@RequestMapping(value = "/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo,RedirectAttributes redirectAttributes ) throws Exception {
		service.delete(vo);
		
		redirectAttributes.addAttribute("shValue",vo.getShValue());
		redirectAttributes.addAttribute("shOption",vo.getShOption());
		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupNele")
	public String codeGroupNele(CodeVo vo,RedirectAttributes redirectAttributes ) throws Exception {
		service.deleteUpdate(vo);
		
		redirectAttributes.addAttribute("shValue",vo.getShValue());
		redirectAttributes.addAttribute("shOption",vo.getShOption());
		return "redirect:/code/codeGroupList";
	}
	
	
	public String makeQueryString(CodeVo vo) {
		String tmp = "&shValue="+vo.getShValue() 
					+"&shOption=" +vo.getShOption();
		return tmp;
		
	}
	
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(CodeVo vo, Code dto) throws Exception {
		
		service.update(dto);
		
		return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq()
		+ makeQueryString(vo);
	}
	

// infrCode

	@RequestMapping(value = "/code/codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		int count = service.selectOneCountCode(vo);
		vo.setParamsPaging(count);
		if(count !=0) {
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list",list);
		}
		
		
		
		List<Code> listCodeGroup = service.selectListC(vo);
		model.addAttribute("listCodeGroup",listCodeGroup);
		
		return "code/codeList";
	}
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(Model model) throws Exception {
	//	List<Code> list = service.selectListCode();
		
	//	model.addAttribute("list",list);
		
		return "code/codeForm";
	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception {
		
		service.insertCode(dto);
		
		return "";
	}
	
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item",rt);
		
		
		return "code/codeView";
	}
	
	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(CodeVo vo, Model model) throws Exception {
		
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item",rt);
		
		return "code/codeForm2";
		
		
	}
	
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		service.updateCode(dto);
		
		return "";
	}

}