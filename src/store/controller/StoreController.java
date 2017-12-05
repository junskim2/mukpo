package store.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pos.domain.CongestionSetVO;
import store.dao.StoreDAO;
import store.domain.BossVO;
import store.domain.MenuVO;
import store.domain.StoreVO;
import store.domain.TableSetVO;
import user.domain.FavoriteVO;

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
		ModelAndView mv = new ModelAndView();
		BossVO result = null;
		if (httpsession.getAttribute("bId") == null) {

			bossVO.setbId(txt);
			bossVO.setbPw(password);

			result = storeDAO.selectBossLogin(bossVO); // 로그인 후 사장님 정보 가져오기

			if (result != null) { // 로그인 정보가 일치할때
				httpsession.setAttribute("bId", result.getbId()); // 세션에 사장님 아이디 저장
				mv.setViewName("store/storeMain"); // viewname 지정
				List<StoreVO> storeList = storeDAO.selectStoreList(bossVO); // 사장님 아이디에 대한 매장 목록 가져오기
				mv.addObject("storeList", storeList); // model에 매장 목록 추가
				mv.addObject("bossInfo", result); // model에 사장 정보 추가

			} else { // 로그인 정보가 불일치할때
				mv.setViewName("store/storeBossLogin"); // 로그인 실패시 다시 로그인 창으로 이동
			}
		} else {
			mv.setViewName("store/storeMain"); // viewname 지정
			bossVO.setbId((String) httpsession.getAttribute("bId"));
			bossVO = storeDAO.selectBossSearch(bossVO);
			List<StoreVO> storeList = storeDAO.selectStoreList(bossVO); // 사장님 아이디에 대한 매장 목록 가져오기
			mv.addObject("storeList", storeList); // model에 매장 목록 추가
			mv.addObject("bossInfo", bossVO); // model에 사장 정보 추가
		}
		return mv;
	}

	// 성현추가
	// 매장 등록화면으로 이동하며 데이터 처리하는 메소드
	@RequestMapping(value = "/storeInput.do")
	public ModelAndView storeInput(BossVO bossVO, String bId) {
		ModelAndView mv = new ModelAndView();
		bossVO.setbId(bId);
		bossVO = storeDAO.selectBossSearch(bossVO);

		mv.setViewName("store/storeInput");
		mv.addObject("bossVO", bossVO);

		return mv;

	}

	// 성현
	// 매장 등록하는 메소드
	@RequestMapping(value = "/storeInputOk.do")
	public ModelAndView storeInputOk(StoreVO storeVO, TableSetVO tableSetVO, String[] checkbox, String GcsCnt,
			String GcsTime, String YcsCnt, String YcsTime, String RcsCnt, String RcsTime) {
		String msg = "매장 등록, 매장테이블 등록, 혼잡도 설정 실패";

		// Start - store테이블 등록 부분
		storeVO.setsAddress(storeVO.getsAddress() + " " + storeVO.getsSido());
		StringTokenizer st = new StringTokenizer(storeVO.getsAddress());
		storeVO.setsSido(st.nextToken());
		storeVO.setsSigungu(st.nextToken());
		String sClose = "";
		for (String tmp : checkbox) {
			sClose = sClose + tmp + ", ";
		}
		storeVO.setsClose(sClose);
		int result = storeDAO.insertStoreInfo(storeVO);
		if (result > 0) {
			msg = "매장 등록 완료! 매장 테이블 등록,혼잡도 설정 실패!";
		}
		// End - 매장정보 등록 부분

		// Start - tableset테이블 등록부분
		int tSetResult = storeDAO.insertTableSet(tableSetVO);
		if (tSetResult > 0) {
			msg = "매장정보,매장 테이블 정보 등록 완료! 혼잡도 설정 실패!";
		}
		// End - tableset테이블 등록부분

		// Start - CongestionSet테이블 등록부분
		CongestionSetVO gConSetVO = new CongestionSetVO();
		CongestionSetVO yConSetVO = new CongestionSetVO();
		CongestionSetVO rConSetVO = new CongestionSetVO();

		gConSetVO.setrCid(storeVO.getrCid());
		gConSetVO.setCsId(storeVO.getrCid() + "_G");
		gConSetVO.setCsCongestion("G");
		gConSetVO.setCsCnt(Integer.parseInt(GcsCnt));
		gConSetVO.setCsTime(GcsTime);
		gConSetVO.setCsYn("Y");

		yConSetVO.setrCid(storeVO.getrCid());
		yConSetVO.setCsId(storeVO.getrCid() + "_Y");
		yConSetVO.setCsCongestion("Y");
		yConSetVO.setCsCnt(Integer.parseInt(YcsCnt));
		yConSetVO.setCsTime(YcsTime);
		yConSetVO.setCsYn("N");

		rConSetVO.setrCid(storeVO.getrCid());
		rConSetVO.setCsId(storeVO.getrCid() + "_R");
		rConSetVO.setCsCongestion("R");
		rConSetVO.setCsCnt(Integer.parseInt(RcsCnt));
		rConSetVO.setCsTime(RcsTime);
		rConSetVO.setCsYn("N");

		int result1 = storeDAO.insertCongestionset(gConSetVO);
		int result2 = storeDAO.insertCongestionset(yConSetVO);
		int result3 = storeDAO.insertCongestionset(rConSetVO);
		if (result1 > 0) {
			msg = "매장정보,매장 테이블 정보 등록 완료! Y,R혼잡도 설정 실패!";
		}
		if (result2 > 0) {
			msg = "매장정보,매장 테이블 정보 등록 완료! R혼잡도 설정 실패!";
		}
		if (result3 > 0) {
			msg = "매장정보 등록 완료!";
		}

		// End - CongestionSet테이블 등록부분

		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storeInputOk");
		mv.addObject("result", result3);
		mv.addObject("message", msg);

		return mv;
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
		// 민우 페이징
		@RequestMapping(value = "storeList.do")
		public ModelAndView storeList(StoreVO store) {

			// 현희 VOList 없애고 List<> 형태로 변경
			ModelAndView mv = new ModelAndView();
			// 1130 현희 추가
			mv.addObject("sMp", store.getsMp()); // 매장인지 포장인지 구분값

			int totalCount = storeDAO.countUserStore(store); //매장 리스트 총 갯수
			
			store.setTotalCount(totalCount);//storeVO setTotalCount에 총매장리스트값 설정
			List<StoreVO> list = storeDAO.selectUserStore(store); //상점리스트 받아오기

			mv.addObject("storeList", list);//상점리스트
			mv.addObject("pageVO",store);//페이징 정보
	 		mv.setViewName("store/storeList");
			
			return mv;
		}

	// 현희 추가
	// 포장 상세 페이지
	// 경식 바꿈
	@RequestMapping("/storePdetail.do")
	public ModelAndView storePdetail(StoreVO vo) {

		ModelAndView mv = new ModelAndView();
		List<MenuVO> list = storeDAO.selectMenuList(vo);
		mv.setViewName("store/storePdetail");
		mv.addObject("menuList", list);
		return mv;
	}

	// 1130 현희 추가
	// 매장 상세 페이지
	@RequestMapping(value = "storeMdetail.do")
	public ModelAndView storeMdetail(MenuVO menuVO, CongestionSetVO congestionSetVO, TableSetVO tableSetVO,
			StoreVO storeVO, FavoriteVO favoriteVO, HttpSession httpsession) {
		// 1130 아름 추가
		List<MenuVO> menuVOCate = storeDAO.selectMenuCate(menuVO); // 매장의 메뉴 카테고리 가져오는 기능 구현
		List<MenuVO> menuVOList = storeDAO.selectMenuList(menuVO); // 매장의 메뉴를 출력하는 기능 구현
		String congestionState = (String) storeDAO.selectCongestionset(congestionSetVO); // 매장의 혼잡도 가져오는 기능 구현
		tableSetVO = storeDAO.selectTableSetSearch(tableSetVO); // 매장의 테이블정보 가져오기
		storeVO = storeDAO.selectStore(storeVO); // 매장설명 가져오는 기능 구현
		List<HashMap> reviewList = storeDAO.selectReviewList(menuVO); // 매장의 리뷰 가져오는 기능 구현
		// 1203 아름 즐겨찾기 매장 가져오는 기능 구현
		Object userName = "";
		userName = httpsession.getAttribute("userName");
		ModelAndView mv = new ModelAndView();
		mv.addObject("favoriteVO", "즐겨찾기X");
		if (userName != null ) {				
			favoriteVO.setmId((String)httpsession.getAttribute("userName"));
			favoriteVO = storeDAO.selectFavoriteStore(favoriteVO);
			if (favoriteVO != null) {
				mv.addObject("favoriteVO", "즐겨찾기O");
			}	
		} 
		
		
		mv.setViewName("store/storeMdetail");
		mv.addObject("menuVOCate", menuVOCate);
		mv.addObject("menuVOList", menuVOList);
		mv.addObject("congestionState", congestionState);
		mv.addObject("tableSetVO", tableSetVO);
		mv.addObject("storeVO", storeVO);
		mv.addObject("reviewList", reviewList);
		return mv;
	}

	// 성현추가
	// 모달창 pwd 체크
	@RequestMapping(value = "bossPwdCheck.do", produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String bossPwdCheck(String bossId, String bossPwd, String rCid) {
		BossVO bossVO = new BossVO();
		System.out.println(bossId);
		System.out.println(bossPwd);
		System.out.println(rCid);
		bossVO.setbId(bossId);
		bossVO.setbPw(bossPwd);

		bossVO = storeDAO.selectBossLogin(bossVO); // 로그인 후 사장님 정보 가져오기
		if (bossVO == null) {
			rCid = null;
		}
		System.out.println("final : " + rCid);
		return rCid;
	}
	
	//주용추가 경기도 시군구 불러오기
		@RequestMapping(value = "/sigunguSelect.do", produces="text/json;charset=UTF-8")
		@ResponseBody
		public void  sigunguSelect(Model model, HttpServletResponse response, HttpServletRequest request,StoreVO store) {
			List<StoreVO> storeVOList = storeDAO.selectSigungu(store); //mybatis형식으로 데이터 가져오기
			   List<JSONObject> rList = new ArrayList<>(); //제이슨 오브젝트 리스트 생성
			  
			   JSONArray ja = new JSONArray(); //제이슨Array 배열생성
			   
			   for(int i=0; i<storeVOList.size(); i++) { //가져온 데이터값 돌려서 한줄씩 JSONobject에 넣기
					JSONObject obj = new JSONObject(); //JONS형식으로 변환할 OBJECT형식 선언
					try {
						obj.put("sSigungu", storeVOList.get(i).getsSigungu());
						ja.put(obj);//object에 넣은값을 배열로 변환하기위해 JSONArray에 넣기
					} catch (JSONException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} //제이슨obj에 가져온 값 넣기
				}
			   try {
				response.getWriter().print(ja.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

}
