package user.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import user.dao.UserDAO;
import user.domain.PointVO;
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
	
	// 마이페이지포인트
		@RequestMapping(value = "/userMypagePoint.do")
		public ModelAndView userMypagePoint(HttpSession httpsession, PointVO pointVO) {
			pointVO.setmId((String) httpsession.getAttribute("userName")); // pointVO에 mId값 설정
			List<PointVO> pointVOList = userDAO.selectPoint(pointVO); // 아이디로 검색한 리스트 porintVOList에 저장
			ModelAndView mv = new ModelAndView(); // ModelAndView 생성
			mv.setViewName("user/userMypagePoint"); // 이동할 페이지 지정
			mv.addObject("pointVOList", pointVOList); // pointVOList라는 이름으로 mv에 넣기
			return mv;
		}

		// 마이페이지포인트날짜검색
		@RequestMapping(value = "/userMypagePointDate.do")
		public ModelAndView userMypagePointDate(HttpSession httpsession, PointVO pointVO) {
			pointVO.setmId((String) httpsession.getAttribute("userName")); // pointVO에 mId값 설정
			List<PointVO> pointVOList = userDAO.selectPointDate(pointVO); // 아이디, 날짜로 검색한 리스트 porintVOList에 저장
			ModelAndView mv = new ModelAndView(); // ModelAndView 생성
			mv.setViewName("user/userMypagePoint"); // 이동할 페이지 지정
			mv.addObject("pointVOList", pointVOList); // pointVOList라는 이름으로 mv에 넣기
			return mv;
		}

		// 마이페이지포인트충전
		@RequestMapping(value = "/userMypagePointCharge.do")
		public ModelAndView userMypagePointCharge(HttpSession httpsession, PointVO pointVO, UserVO userVO) {
			ModelAndView mv = new ModelAndView(); // ModelAndView 생성
			mv.setViewName("user/userMypagePointCharge"); // 이동할 페이지 지정
			
			// 회원명 검색
			userVO.setmId((String) httpsession.getAttribute("userName"));
			UserVO userVOName = userDAO.selectMemberName(userVO);
			mv.addObject("userVOName", userVOName);
			
			pointVO.setmId((String) httpsession.getAttribute("userName")); // pointVO에 mId값 설정
			pointVO = userDAO.selectPointCharge(pointVO); // 해당 아이디의 마지막 포인트 검색
			mv.addObject("pointVO", pointVO); // pointVO라는 이름으로 mv에 넣기
			return mv;
		}
		
		// 마이페이지 포인트 충전 insert
		@RequestMapping(value="/userMypagePointChargeOk.do")
		public ModelAndView userMypagePointChargeOk (PointVO pointVO, HttpSession httpsession) {
			// ModelAndView 생성
			ModelAndView mv = new ModelAndView();
			
			String message = "충전실패하였습니다.";
			
			pointVO.setmId((String)httpsession.getAttribute("userName"));
			
			pointVO.setpCruntmoney(pointVO.getpCruntmoney() + pointVO.getpPrice());
			
			int result = userDAO.insertPoint(pointVO);
			if (result > 0) {
				message = "충전완료되었습니다.";
			}
			
			mv.setViewName("user/userMypagePointChargeOk");
			mv.addObject("result", result);
			mv.addObject("message", message);
			
			return mv;
		}
	
}
