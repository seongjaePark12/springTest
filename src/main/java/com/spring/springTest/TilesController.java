package com.spring.springTest;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.springTest.vo.LombokVO;
import com.spring.springTest.vo.ValidatorVO;

@Controller
@RequestMapping("/tiles")
public class TilesController {
//로그인 처리 메소드(GET)
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String loginGet() {
		return "member/login";
	}
	
	// 로그인 처리 메소드(POST) - 로그인후 메일화면으로 이동
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView loginPost(ModelAndView mv,
			HttpSession session,
			String mid, String pwd, int level) {
		if(pwd.equals("1234")) {
			session.setAttribute("sMid", mid);
			session.setAttribute("sLevel", level);
			
			mv.addObject("mid", mid);
			mv.setViewName("main/tilesMain");
			return mv;
		}
		else {
			mv.setViewName("member/login");
			return mv;
		}
	}
	
	@RequestMapping("/logout")
	public String logoutGet(HttpSession session) {
//		session.removeAttribute("sMid");
		session.invalidate();
		
		return "redirect:/"; 
	}
	
	// 로그인후 메인화면으로 이동
	@RequestMapping(value="/tilesMain", method = RequestMethod.GET)
	public ModelAndView tilesMainGet(ModelAndView mv) {
		mv.setViewName("main/tilesMain");
		return mv;
	}
	
	// 방명록 리스트
	@RequestMapping("/guest/guestList")
	public ModelAndView guestListGet(ModelAndView mv) {
		System.out.println("이곳은 방명록 컨트롤러입니다");
		
		mv.setViewName("guest/guestList");
		return mv;
	}
	// 게시판 리스트
	@RequestMapping("/board/boardList")
	public ModelAndView boardListGet(ModelAndView mv) {
		System.out.println("이곳은 게시판 컨트롤러입니다");
		mv.setViewName("board/boardList");
		return mv;
	}
	// 자료실 리스트
	@RequestMapping("/pds/pdsList")
	public ModelAndView pdsListGet(ModelAndView mv) {
		System.out.println("이곳은 자료실 컨트롤러입니다");
		mv.setViewName("pds/pdsList");
		return mv;
	}
	// 관리자
	@RequestMapping("/admin/adminList")
	public ModelAndView adminListGet(ModelAndView mv) {
		System.out.println("이곳은 관리자 컨트롤러입니다");
		mv.setViewName("admin/adminList");
		return mv;
	}
	// validator(데이터 검증)테스트
	@RequestMapping(value="/validatorForm", method = RequestMethod.GET)
	public String validatorFormGet() {
		return "/validator/validatorForm";
	}
	// validator(데이터 검증)테스트
	@RequestMapping(value="/validatorForm", method = RequestMethod.POST)
	public String validatorFormPost(Model model, @Validated ValidatorVO vo, BindingResult bindingResult) {
		System.out.println("아이디 : "+ vo.getMid());
		System.out.println("비밀번호 : "+ vo.getPwd());
		System.out.println("나이 : "+ vo.getAge());
		System.out.println("error : "+ bindingResult.hasErrors());
		
		/*
		if(vo.getMid().equals("")) {
			System.out.println("아이디가 비어있습니다");
		}
		*/
		
		if(bindingResult.hasErrors()) { //bindingResult.hasErrors() 결과값이 true이면 앞에서 전송한 
			List<ObjectError> list = bindingResult.getAllErrors();
			for(ObjectError e : list) {
				System.out.println("메세지 : " +e.getDefaultMessage());
			}
			return "redirect:/tiles/validatorForm";
		}
		
		model.addAttribute("vo", vo);
		return "/validator/validatorFormOk";
	}
	
	@RequestMapping(value="/lombokForm", method = RequestMethod.GET)
	public String lombokFormGet() {
		return"/lombok/lombokForm";
	}
	
	@RequestMapping(value="/lombokForm", method = RequestMethod.POST)
	public String lombokFormPost(Model model, LombokVO vo) {
		
		vo.setSu1(100);
		vo.setSu2(200);
		vo.setOp("+");
		String hap = vo.getSu1() +vo.getOp() +vo.getSu2();
		
		model.addAttribute("hap", hap);
		model.addAttribute("vo",vo);
		
		return"/lombok/lombokFormOk";
	}
}
