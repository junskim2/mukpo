package store.dao;

import java.util.HashMap;
import java.util.List;

import pos.domain.CongestionSetVO;
import store.domain.BlackListVO;
import store.domain.BossVO;
import store.domain.MenuVO;
import store.domain.StoreVO;
import store.domain.TableSetVO;
import user.domain.FavoriteVO;

public interface StoreDAO {
	// 사장님 로그인 기능 구현
	BossVO selectBossLogin(BossVO vo);

	// 사장님 가입 기능 구현
	int insertBossJoin(BossVO vo);

	// 사장님 id 중복체크 기능 구현
	BossVO selectBossIdCheck(BossVO vo);

	// 사장님 정보 수정 기능 구현
	int updateBossInfoModify(BossVO vo);

	// 사장님 정보 삭제 기능 구현
	int updateBossInfoDelete(BossVO vo);

	// 사장님 정보 가져오는 기능 구현
	BossVO selectBossSearch(BossVO vo);

	// 매장 정보 입력 기능 구현
	int insertStoreInfo(StoreVO vo);

	// 매장의 테이블 수 입력 기능 구현
	int insertTableSet(TableSetVO vo);

	// 매장 정보 수정 기능 구현
	int updateStoreModify(StoreVO vo);

	// 매장의 테이블 수 수정 기능 구현
	int updateTableSetModify(TableSetVO vo);

	// 매장 정보 삭제 기능 구현
	int updateStoreDelete(StoreVO vo);

	// 매장의 테이블 수 삭제 기능 구현
	int updateTableSetDelete(TableSetVO vo);

	// 로그인한 사장님에 대한 매장 정보 가져오는 기능 구현
	List<StoreVO> selectStoreList(BossVO vo);

	// 선택한 매장에 대한 테이블 정보를 가져오는 기능 구현
	TableSetVO selectTableSetSearch(TableSetVO tableSetVO);

	// 매장의 메뉴를 등록하는 기능 구현
	int insertMenu(MenuVO vo);

	// 매장의 메뉴를 수정하는 기능 구현
	int updateMenuModify(MenuVO vo);

	// 매장의 메뉴를 삭제하는 기능 구현
	int updateMenuDelete(MenuVO vo);

	// 1130 아름 StoreVO -> MenuVO로 수정
	// 매장의 메뉴를 출력하는 기능 구현
	List<MenuVO> selectMenuList(MenuVO menuVO);
	
	// 1201 경식 메뉴리스트
	List<MenuVO> selectMenuList(StoreVO storeVO);
	
	// 매장의 블랙리스트를 등록하는 기능 구현
	int insertBlackList(BlackListVO vo);

	// 매장의 블랙리스트를 수정하는 기능 구현
	int blackListUpdate(BlackListVO vo);

	// 매장의 블랙리스트를 삭제하는 기능 구현
	int blackListDelete(BlackListVO vo);

	// 매장의 블랙리스트를 출력하는 기능 구현
	List<BlackListVO> menuInsert(BlackListVO vo);

	// 사용자 매장검색 리스트
	List<StoreVO> selectUserStore(StoreVO store);

	// 민우 매장리스트 총 갯수
	int countUserStore(StoreVO store);
	
	// 혼잡도 초기 설정
	int insertCongestionset(CongestionSetVO vo);

	// 1130 아름 매장의 메뉴 카테고리 가져오는 기능 구현
	List<MenuVO> selectMenuCate(MenuVO menuVO);

	// 1130 아름 매장 리뷰 가져오는 기능 구현
	List<HashMap> selectReviewList(MenuVO menuVO);

	// 1130 아름 매장 혼잡도 가져오는 기능 구현
	String selectCongestionset(CongestionSetVO congestionSetVO);

	// 1130 매장설명 가져오는 기능 구현
	StoreVO selectStore(StoreVO storeVO);
	
	// 1203 아름 즐겨찾기 매장 가져오는 기능 구현
	FavoriteVO selectFavoriteStore(FavoriteVO vo);
	
	//신주용 1205 시군구 가져오는 기능 구현
	List<StoreVO> selectSigungu(StoreVO store);

	// 1206 경식 메뉴카테고리 리스트 출력
	List<MenuVO> selectCateList(MenuVO vo);
	
	
}
