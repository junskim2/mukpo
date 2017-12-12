package reserve.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pos.domain.PaymentVO;
import reserve.dao.ReserveDAO;
import reserve.domain.ReserveVO;
import store.domain.MenuVO;
import user.domain.UserVO;

@Controller
@RequestMapping("/reserve")
public class ReserveController {

	@Autowired
	private ReserveDAO reserveDAO;

	// 화면띄우기
	@RequestMapping(value = "/{url}.do")
	public String url(@PathVariable String url) {
		return "/reserve/" + url;
	}

	// 1206주용 수정
	// 로그인 후 마이페이지 접속할때, 마이페이지에서 예약 내역 클릭했을때
	@RequestMapping("/userMypageReservList.do")
	public ModelAndView userInsert(ReserveVO vo, HttpSession httpSession) {
		vo.setmId((String) httpSession.getAttribute("userName"));

		// 예약 내역 db select
		List<HashMap> voList = reserveDAO.reserveList(vo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/userMypageReservList");
		mv.addObject("voList", voList);

		return mv;
	}

	// 1201 아름 추가 예약화면 (테이블번호 가져가기)
	@RequestMapping(value = "/reserveM.do")
	public ModelAndView reserveM(UserVO userVO, ReserveVO vo, HttpSession httpSession) {
		userVO.setmId((String)httpSession.getAttribute("userName"));
		vo.setmId((String)httpSession.getAttribute("userName"));   //사용자 값 들어옴
		List<UserVO> reserveTable = reserveDAO.reserveTable(userVO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("reserve/reserveM");
		mv.addObject("reserveInfo", vo);
		mv.addObject("reserveUserInfo", reserveTable);
		
		return mv;
	}

	// 1201 아름,민우 추가 예약정보저장
			@RequestMapping(value = "reserveMPayment.do")
			public ModelAndView reserveMPayment(ReserveVO vo, String rTel, String rName, String rMemo) {
				List<MenuVO> payMenuList = reserveDAO.reserveMenuList(vo);	// 1201 아름 메뉴정보 가져오기
				ModelAndView mv = new ModelAndView();
				int deposit = vo.getrPnum()*5000; //예치금 계산

				mv.setViewName("reserve/reserveMPayment");
				mv.addObject("reserveInfo", vo);
				mv.addObject("payMenuList", payMenuList);
				mv.addObject("rTel", rTel);
				mv.addObject("rName", rName);
				mv.addObject("rMemo", rMemo);
				mv.addObject("rPnum", deposit);
				return mv;
			}

	//1210 포장 결제하기 주용
	@RequestMapping(value ="/reservePaymentOk.do")
		public ModelAndView userRegister(PaymentVO vo,ReserveVO rvo,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

			String rCid = rvo.getrCid();
			
			vo.setpState("Y");
			vo.setsId(rCid);
			//결제 db
			int result = reserveDAO.reservePayment(vo);
			//예약 db
			int result2 = reserveDAO.reservePackage(rvo);
			
			mv.setViewName("reserve/reservePaymentOk");
			mv.addObject("result",result);
			return mv; 
		}

}
