package reserve.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import reserve.dao.ReserveDAO;
import reserve.domain.ReserveVO;
import store.domain.MenuVO;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
	
	@Autowired
	private ReserveDAO reserveDAO;
	
	// 화면띄우기
	@RequestMapping(value="/{url}.do")
	public String url(@PathVariable String url) {
		return "/reserve/" + url;
	}
	
	//마이페이지에서 예약 내역 클릭했을때
		@RequestMapping("/userMypageReservList.do")
		public ModelAndView userInsert(ReserveVO vo) {
			//예약 내역 db select
			 List<HashMap> voList = reserveDAO.reserveList(vo);
			
			 
			ModelAndView mv = new ModelAndView();
			mv.setViewName("user/userMypageReservList");
			mv.addObject("voList",voList); 
			
		
		
			return mv;
		}
		
		// 1201 아름 추가 예약화면 (테이블번호 가져가기)
		@RequestMapping(value = "/reserveM.do")
		public ModelAndView reserveM(ReserveVO vo) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("reserve/reserveM");
			mv.addObject("reserveInfo", vo);
			
			return mv;
		}

		// 1201 아름 추가 예약정보저장
		@RequestMapping(value = "reserveMPayment.do")
		public ModelAndView reserveMPayment(ReserveVO vo, String rTel, String rName, String rMemo) {
			List<MenuVO> payMenuList = reserveDAO.reserveMenuList(vo);	// 1201 아름 메뉴정보 가져오기
			System.out.println(vo.getrCid());
			System.out.println(payMenuList.size());
			ModelAndView mv = new ModelAndView();
			mv.setViewName("reserve/reservePPayment");
			mv.addObject("reserveInfo", vo);
			mv.addObject("payMenuList", payMenuList);
			mv.addObject("rTel", rTel);
			mv.addObject("rName", rName);
			mv.addObject("rMemo", rMemo);
			return mv;
		}
}
