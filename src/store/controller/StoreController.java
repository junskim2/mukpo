package store.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import store.dao.StoreDAO;
import store.domain.BossVO;

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

	@RequestMapping("/storeMain.do")
	public ModelAndView storeMain(String txt, String password, BossVO BossVO, HttpSession httpsession) {
		BossVO result = null;
		BossVO.setbId(txt);
		BossVO.setbPw(password);

		result = storeDAO.selectBossLogin(BossVO);
		System.out.println(result.getbId());
		ModelAndView mv = new ModelAndView();
		if (result != null) {
			httpsession.setAttribute("bId", result.getbId());
			System.out.println(httpsession.getAttribute("bId"));
			mv.setViewName("store/storeMain");
		} else {
			mv.setViewName("store/storeBossLogin");
		}

		return mv;
	}

	@RequestMapping("/storeInput.do")
	public void storeInput() {

	}
}
