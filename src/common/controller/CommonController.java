package common.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import reserve.dao.ReserveDAO;
import user.dao.UserDAO;
import user.domain.ReviewVO;
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
	
	//메인 화면에서 아이디 비번 입력 후 로그인을 클릭했을때
	@RequestMapping("/home.do")
	public ModelAndView login(UserVO userVO,Model model, HttpSession session) {
		String message = "로그인을 실패하셨습니다.";
		int result=0;
		//id pw 디비통해 select
		UserVO dbvo = userDAO.selectMemberLogin(userVO);
		ModelAndView mv = new ModelAndView();
		if(dbvo !=null) {
			message="로그인 성공";
			result=1;
			session.setAttribute("sessionTime", (new Date().toString()));
			session.setAttribute("userName", dbvo.getmId());
		}
		//모델앤뷰 화면 리턴
		mv.setViewName("common/home");
		mv.addObject("result", result);
		mv.addObject("message", message);
		return mv;
		
	}
	
	// 홈에서 먹고갈래로 들어왔을 때
	@RequestMapping("/userMmain.do")
	public ModelAndView userMmain() {
		String mp = "M";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userMmain");
// 1130 현희 sPM -> sMp로 이름 통일
		mv.addObject("sMp", mp);
// 1201 현희 생생리뷰 디비 값 가져오기
		List<ReviewVO> review = userDAO.selectLatelyReview(mp);
		mv.addObject("review", review);
		
		return mv;
	}
	
	// 홈에서 포장할래로 들어왔을 때
	@RequestMapping("/userPmain.do")
	public ModelAndView userPmain() {
		String mp = "P";
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userPmain");
// 1130 현희 sPM -> sMp로 이름 통일 
		mv.addObject("sMp", mp);
// 1201 현희 생생리뷰 디비 값 가져오기
		List<ReviewVO> review = userDAO.selectLatelyReview(mp);
		mv.addObject("review", review);
		
		return mv;
	}
	
}
