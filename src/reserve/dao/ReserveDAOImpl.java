package reserve.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pos.domain.PaymentVO;
import reserve.domain.ReserveVO;
import store.domain.MenuVO;
@Repository
public class ReserveDAOImpl implements ReserveDAO{
	
	@Autowired
	private SqlSessionTemplate reservess;

	@Override
	public int reserveInsert(ReserveVO vo) {					//예약하기 insert
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<HashMap> reserveList(ReserveVO vo) {			//예약 불러오기 select
			return  reservess.selectList("reserve.reserveList", vo);
	}

	@Override
	public ReserveVO reserveUpdate(ReserveVO vo) {				//예약 취소 or 주간예약 취소,변경 update
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int reserveMenuInsert(ReserveVO vo) {				//메뉴 예약 insert
		// TODO Auto-generated method stub
		return 0;
	}

//	@Override
//	public ReserveVO reserveMenuList(ReserveVO vo) {			//메뉴 예약 불러오기 select 
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public int reserveWeekInsert(ReserveVO vo) {				// 주간예약하기 insert
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReserveVO reserveWeekSelect(ReserveVO vo) {			// 주간예약 불러오기select
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReserveVO favoriteWeekInsert(ReserveVO vo) {			// 주간 예약즐겨찾기 insert
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReserveVO favoriteWeekSelect(ReserveVO vo) {			// 주주간예약 즐겨찾기 불러오기 select
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MenuVO> reserveMenuList(ReserveVO vo) {			// 1201 아름 메뉴정보 가져오기 
		return reservess.selectList("reserve.reserveMenuList", vo);
	}

	@Override
	public int reservePayment(PaymentVO vo) {
		// TODO Auto-generated method stub
		return reservess.insert("reserve.reservePayment",vo);
	}
	//1210 주용추가 포장 결제
	@Override
	public int reservePackage(ReserveVO vo) {			//1209 주용 포장예약
		// TODO Auto-generated method stub
		return reservess.insert("reserve.reservePackage",vo);
	}



}
