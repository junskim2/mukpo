package common.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import reserve.dao.ReserveDAO;
import user.dao.UserDAO;
import user.domain.UserVO;

@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private ReserveDAO reserveDAO;
	
	// 화면띄우기
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/common/" + url;
	}
	
	
	@RequestMapping("/home.do")
	public ModelAndView login(UserVO userVO,Model model, HttpSession session) {
		String message = "로그인을 실패하셨습니다.";
		int result=0;
	
		UserVO dbvo = userDAO.selectMemberLogin(userVO);
		ModelAndView mv = new ModelAndView();
		if(dbvo !=null) {
			message="로그인 성공";
			result=1;
			session.setAttribute("sessionTime", (new Date().toString()));
			session.setAttribute("userName", dbvo.getmId());
					
		}
		System.out.println(message);
		mv.setViewName("common/home");
		mv.addObject("result", result);
		mv.addObject("message", message);
		return mv;
		
	}
	
	// 홈에서 먹고갈래로 들어왔을 때
	@RequestMapping("/userMmain.do")
	public ModelAndView userMmain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userMmain");
// 1130 현희 sPM -> sMp로 이름 통일
		mv.addObject("sMp", "M");
		
		return mv;
	}
	
	// 홈에서 포장할래로 들어왔을 때
	@RequestMapping("/userPmain.do")
	public ModelAndView userPmain() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userPmain");
// 1130 현희 sPM -> sMp로 이름 통일 
		mv.addObject("sMp", "P");
		
		return mv;
	}
	
}
