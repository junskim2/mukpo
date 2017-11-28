package user.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.dao.UserDAO;
import user.domain.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("/login.do")
	public ModelAndView login(UserVO userVO,Model model, HttpSession session) {
		String message = "fail.";
		int result=0;
	
		UserVO dbvo = userDAO.selectMemberLogin(userVO);
		ModelAndView mv = new ModelAndView();
		if(dbvo !=null) {
			message="success";
			result=1;
			session.setAttribute("sessionTime", (new Date().toString()));
			session.setAttribute("userName", dbvo.getmId());
					
		}
		System.out.println(message);
		mv.setViewName("user/login");
		mv.addObject("result", result);
		mv.addObject("message", message);
		return mv;
		
	}
//	@RequestMapping("/userLogin.do")
//	public String login(Model model) {
//		String message = "로그인을 성공했습니다.";
//		int result=0;
//		System.out.println(message);
//		userVO dbvo = userDAO.userLogin(userVO);
//		if(dbvo !=null) {
//			message="로그인 성공";
//			result=1;
//			session.setAttribute("sessionTime", (new Date().toString()));
//			session.setAttribute("userName", dbvo.getUserId());
//					
//		}
//		model.addAttribute("result", result);
//		model.addAttribute("message", message);
//		
//		return "user/userLogin";
//		
//	}
//	@RequestMapping("/UserInsert.do")
//	public ModelAndView userInsert(UserVO userVO) {
//		String msg = "가입을 축하합니다.";
//		int result = userDAO.userInsert(userVO);
//		if(result>0) {
//			msg= userVO.getUserName() + "님의 가입을 축하합니다.";
//		}
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("index");
//		mv.addObject("result",result);
//		mv.addObject("message",msg);
//		return mv;
//	}
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/user/" + url;
	}
	
}
