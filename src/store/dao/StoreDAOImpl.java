package store.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		// TODO Auto-generated method stub
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

	@Override
	public int updateBossInfoDelete(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertStoreInfo(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertTableSet(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
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

	@Override
	public List<StoreVO> selectStoreList(BossVO vo) {
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public List<MenuVO> selectMenuList(StoreVO vo) {
		// TODO Auto-generated method stub
		return null;
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

}
