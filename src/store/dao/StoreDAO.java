package store.dao;

import java.util.List;

import store.domain.BlackListVO;
import store.domain.BossVO;
import store.domain.MenuVO;
import store.domain.StoreVO;
import store.domain.TableSetVO;


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
	TableSetVO selectTableSetSearch(StoreVO vo);

	// 매장의 메뉴를 등록하는 기능 구현
	int insertMenu(MenuVO vo);

	// 매장의 메뉴를 수정하는 기능 구현
	int updateMenuModify(MenuVO vo);

	// 매장의 메뉴를 삭제하는 기능 구현
	int updateMenuDelete(MenuVO vo);

	// 매장의 메뉴를 출력하는 기능 구현
	List<MenuVO> selectMenuList(StoreVO vo);

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
}
