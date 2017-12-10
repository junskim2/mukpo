package reserve.dao;

import java.util.HashMap;
import java.util.List;

import pos.domain.PaymentVO;
import reserve.domain.ReserveVO;
import store.domain.MenuVO;

public interface ReserveDAO {

	int reserveInsert(ReserveVO vo); //예약하기 insert
	
	List<HashMap> reserveList(ReserveVO vo); //예약 불러오기 select
	
	ReserveVO reserveUpdate(ReserveVO vo); //예약 취소 or 주간예약 취소,변경 update
	
	int reserveMenuInsert(ReserveVO vo); //메뉴 예약 insert
	
	//ReserveVO reserveMenuList(ReserveVO vo); //메뉴 예약 불러오기 select 
	
	int reserveWeekInsert(ReserveVO vo); // 주간예약하기 insert
	
	ReserveVO reserveWeekSelect(ReserveVO vo); // 주간예약 불러오기select
	
	ReserveVO favoriteWeekInsert(ReserveVO vo); // 주간 예약즐겨찾기 insert
	
	ReserveVO favoriteWeekSelect(ReserveVO vo); // 주주간예약 즐겨찾기 불러오기 selsect
	
	List<MenuVO> reserveMenuList(ReserveVO vo); // 1201 아름 메뉴정보 가져오기 
	
	int reservePayment(PaymentVO vo);
	
	int reservePackage(ReserveVO vo);	// 1210  주용 포장 예약

	
}
