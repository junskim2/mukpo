package reserve.dao;

import java.util.List;

import reserve.domain.ReserveVO;

public interface ReserveDAO {

	int reserveInsert(ReserveVO vo); //예약하기 insert
	
	List<ReserveVO> reserveList(ReserveVO vo); //예약 불러오기 select
	
	ReserveVO reserveUpdate(ReserveVO vo); //예약 취소 or 주간예약 취소,변경 update
	
	int reserveMenuInsert(ReserveVO vo); //메뉴 예약 insert
	
	ReserveVO reserveMenuList(ReserveVO vo); //메뉴 예약 불러오기 select 
	
	int reserveWeekInsert(ReserveVO vo); // 주간예약하기 insert
	
	ReserveVO reserveWeekSelect(ReserveVO vo); // 주간예약 불러오기select
	
	ReserveVO favoriteWeekInsert(ReserveVO vo); // 주간 예약즐겨찾기 insert
	
	ReserveVO favoriteWeekSelect(ReserveVO vo); // 주주간예약 즐겨찾기 불러오기 selsect
	

	
}
