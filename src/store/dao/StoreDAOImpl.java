package store.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.domain.CongestionSetVO;
import store.domain.BlackListVO;
import store.domain.BossVO;
import store.domain.MenuVO;
import store.domain.StoreVO;
import store.domain.TableSetVO;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	private SqlSessionTemplate storess;

	// 사장님 로그인 기능 구현
	@Override
	public BossVO selectBossLogin(BossVO vo) {
		return storess.selectOne("store.selectBossLogin", vo);
	}

	@Override
	public int insertBossJoin(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BossVO selectBossIdCheck(BossVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBossInfoModify(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 사장님 정보 가져오는 기능 구현
	@Override
	public BossVO selectBossSearch(BossVO vo) {
		return storess.selectOne("store.selectBossSearch", vo);
	}

	@Override
	public int updateBossInfoDelete(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 매장 등록 기능 구현
	@Override
	public int insertStoreInfo(StoreVO vo) {
		return storess.insert("store.insertStoreInfo", vo);
	}

	// 테이블 매장 관리 테이블 입력
	@Override
	public int insertTableSet(TableSetVO vo) {
		return storess.insert("store.insertTableSet", vo);
	}

	@Override
	public int updateStoreModify(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTableSetModify(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStoreDelete(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateTableSetDelete(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 매장 목록 리스트 반환 메소드
	@Override
	public List<StoreVO> selectStoreList(BossVO vo) {
		return storess.selectList("store.selectStoreList", vo);
	}

	@Override
	public TableSetVO selectTableSetSearch(StoreVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMenu(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMenuModify(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMenuDelete(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	//매장의 매뉴 리스트  경식 추가
		@Override
		public List<MenuVO> selectMenuList(StoreVO vo) {
			// TODO Auto-generated method stub
			return storess.selectList("store.selectMenuList", vo);
		}

	@Override
	public int insertBlackList(BlackListVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int blackListUpdate(BlackListVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int blackListDelete(BlackListVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BlackListVO> menuInsert(BlackListVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	// 사용자 매장검색 리스트
	@Override
	public List<StoreVO> selectUserStore(StoreVO store) {

		return storess.selectList("store.selectUserStore", store);
	}

	// 혼잡도 초기설정
	@Override
	public int insertCongestionset(CongestionSetVO vo) {
		return storess.insert("store.insertCongestionset", vo);
	}

}
