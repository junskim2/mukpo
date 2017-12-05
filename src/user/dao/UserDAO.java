package user.dao;

import java.util.HashMap;
import java.util.List;

import store.domain.StoreVO;
import user.domain.FavoriteVO;
import user.domain.PointVO;
import user.domain.ReviewVO;
import user.domain.UserVO;

public interface UserDAO {

	int insertMemberJoin(UserVO vo); // 사용자 회원가입

	UserVO selectMemberLogin(UserVO vo); // 사용자 로그인
	
	UserVO selectMemberName(UserVO userVO);	// 회원명 검색

	// 1203 아름 리턴형 수정
	int updateMemberModify(UserVO vo); // 개인정보 수정

	// 1203 아름 리턴형 수정
	int updateMemberDelete(UserVO vo); // 회원탈퇴

	List<PointVO> selectPoint(PointVO vo); // 마이페이지 - 먹포인트 현황

	int insertPoint(PointVO vo); // 마이페이지 - 먹포인트 출력

	List<PointVO> selectPointDate(PointVO vo); // 마이페이지 - 먹포인트 현황 (날짜검색)

	PointVO selectPointCharge(PointVO pointVO); // 마이페이지 - 현재포인트

	FavoriteVO selectFS(FavoriteVO vo); // 마이페이지 - 즐겨찾기목록

	ReviewVO selectReview(ReviewVO vo); // 마이페이지 - 내가 쓴 후기
	
	int insertReview(ReviewVO vo); // 마이페이지 - 후기쓰기 신주용
	
	List<StoreVO> getAddrList(StoreVO vo); //마이페이지 - 주간예약 매장 검색 ajax
	
// 1201 현희 추가
	List<HashMap> selectLatelyReview(String mp); // 메인 - 생생리뷰
	
// 1202 아름 회원정보 수정 전 비밀번호 확인
		UserVO selectMemberModifyCheck(UserVO vo);

// 1204 아름 즐겨찾기 추가
		int insertFavorite(FavoriteVO vo);

// 1204 아름 즐겨찾기 삭제
		int deleteFavorite(FavoriteVO vo);
}
