package store.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import store.dao.StoreDAO;
import store.domain.BossVO;
import store.domain.StoreVO;

@Controller
@RequestMapping("/store")
public class StoreController {

	@Autowired
	private StoreDAO storeDAO;

	// 화면 띄우기
	@RequestMapping(value = "/{url}.do")
	public String url(@PathVariable String url) {
		return "/store/" + url;
	}

	@RequestMapping("/storeBossLogin.do")
	public void storeBossLogin() {

	}

// 아름,성현추가
	// 로그인 후 Main으로 이동하며 데이터 처리하는 메소드
	@RequestMapping("/storeMain.do")
	public ModelAndView storeMain(String txt, String password, BossVO bossVO, HttpSession httpsession) {
		BossVO result = null;
		bossVO.setbId(txt);
		bossVO.setbPw(password);

		result = storeDAO.selectBossLogin(bossVO); // 로그인 후 사장님 정보 가져오기

		ModelAndView mv = new ModelAndView();
		if (result != null) { // 로그인 정보가 일치할때
			httpsession.setAttribute("bId", result.getbId()); // 세션에 사장님 아이디 저장
			mv.setViewName("store/storeMain"); // viewname 지정
			List<StoreVO> storeList = storeDAO.selectStoreList(bossVO); // 사장님 아이디에 대한 매장 목록 가져오기
			mv.addObject("storeList", storeList); // model에 매장 목록 추가
			mv.addObject("bossInfo", result); // model에 사장 정보 추가
		} else { // 로그인 정보가 불일치할때
			mv.setViewName("store/storeBossLogin"); // 로그인 실패시 다시 로그인 창으로 이동
		}

		return mv;
	}

// 성현추가
	// 매장 등록화면으로 이동하며 데이터 처리하는 메소드
	@RequestMapping(value = "/storeInput.do")
	public void storeInput() {

	}

// 성현추가
	// 매장 설정화면으로 이동하며 데이터 처리하는 메소드
	@RequestMapping(value = "/storeSetting.do")
	public ModelAndView storeSetting(String rCid) {
		StoreVO svo = new StoreVO();
		svo.setrCid(rCid);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storeModify"); // viewname 지정
		mv.addObject("storeVO", svo); // model에 매장정보 추가

		return mv;
	}

	// 매장 검색
	@RequestMapping(value = "storeList.do")
	public ModelAndView storeList(StoreVO store) {
// 현희 VOList 없애고 List<> 형태로 변경
		ModelAndView mv = new ModelAndView();
// 1130 현희 추가
		mv.addObject("sMp", store.getsMp()); // 매장인지 포장인지 구분값
		
		List<StoreVO> list = storeDAO.selectUserStore(store);
		mv.setViewName("store/storeList");
		mv.addObject("storeList", list);

		return mv;
	}

// 현희 추가
	// 포장 상세 페이지
	@RequestMapping(value = "storePdetail.do")
	public void storePdetail(String rCid) {
		// 사업자등록번호 rCid로 넘어옴
	}
	
// 1130 현희 추가
	// 매장 상세 페이지
	@RequestMapping(value = "storeMdetail.do")
	public void storeMdetail(String rCid) {
		// 사업자등록번호 rCid로 넘어옴
	}

}
