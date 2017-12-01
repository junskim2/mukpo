package pos.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pos.dao.PosDAO;
import pos.domain.CongestionSetVO;
import pos.domain.OrderListVO;
import reserve.domain.ReserveVO;
import store.domain.MenuVO;
import store.domain.TableSetVO;

@Controller
@RequestMapping("/pos")
public class PosController {

	@Autowired
	private PosDAO posDAO;

	// 화면띄우기
	@RequestMapping(value = "/{url}.do")
	public String url(@PathVariable String url) {

		System.out.println(url);
		return "/pos/" + url;
	}
	
	// 성현추가
	// storeMain -> posMain
	@RequestMapping(value = "/posMain.do")
	public ModelAndView posMain(String rCid) {
		ModelAndView mv = new ModelAndView();
		
		//메뉴 리스트 가져오기
		List<MenuVO> menuList = posDAO.selectMenuList(rCid);
		//주문내역 가져오기
		List<OrderListVO> orderList = posDAO.selectOrderList(rCid);
		//테이블 정보가져오기
		TableSetVO tableSet = posDAO.selectTableSet(rCid);
		
		//혼잡도설정 가져오기 시작
		CongestionSetVO gCon = new CongestionSetVO();
		CongestionSetVO yCon = new CongestionSetVO();
		CongestionSetVO rCon = new CongestionSetVO();
		
		gCon.setCsCongestion("G");
		gCon.setrCid(rCid);
		yCon.setCsCongestion("Y");
		yCon.setrCid(rCid);
		rCon.setCsCongestion("R");
		rCon.setrCid(rCid);
		
		gCon = posDAO.selectCongestionset(gCon);
		yCon = posDAO.selectCongestionset(yCon);
		rCon = posDAO.selectCongestionset(rCon);
		//혼잡도설정 가져오기 끄읏		
		
		//예약 내역 리스트 가져오기
		List<ReserveVO> reserveList = posDAO.selectReserveList(rCid);
		
		mv.addObject("menuList", menuList);
		mv.addObject("orderList", orderList);
		mv.addObject("tableSet", tableSet);
		mv.addObject("gCon", gCon);
		mv.addObject("yCon", yCon);
		mv.addObject("rCon", rCon);
		mv.addObject("reserveList", reserveList);
		
		mv.setViewName("pos/posMain");
		
		return mv;
	}

}
