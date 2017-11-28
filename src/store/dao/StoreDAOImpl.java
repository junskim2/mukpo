package store.dao;
 
import java.util.List;

import org.springframework.stereotype.Repository;

import store.domain.BlackListVO;
import store.domain.BossVO;
import store.domain.MenuVO;
import store.domain.StoreVO;
import store.domain.TableSetVO;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Override
	public BossVO bossLogin(BossVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int bossInsert(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public BossVO bossIdCheck(BossVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int bossUpdate(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int bossDelete(BossVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int storeInsert(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tableSetInsert(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int storeUpdate(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tableSetUpdate(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int storeDelete(StoreVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tableSetDelete(TableSetVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<StoreVO> searchStore(BossVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TableSetVO searchTableSet(StoreVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int menuInsert(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int menuUpdate(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int menuDelete(MenuVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MenuVO> menuInsert(StoreVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int blackListInsert(BlackListVO vo) {
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
