package reserve.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import reserve.domain.ReserveVO;
@Repository
public class ReserveDAOImpl implements ReserveDAO{

	@Override
	public int reserveInsert(ReserveVO vo) {					//예약하기 insert
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ReserveVO> reserveList(ReserveVO vo) {			//예약 불러오기 select
		// TODO Auto-generated method stub
		return null;
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

	@Override
	public ReserveVO reserveMenuList(ReserveVO vo) {			//메뉴 예약 불러오기 select 
		// TODO Auto-generated method stub
		return null;
	}

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





}
