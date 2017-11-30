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
}
