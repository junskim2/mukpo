package user.dao;

import java.util.List;

import user.domain.FavoriteVO;
import user.domain.PointVO;
import user.domain.ReviewVO;
import user.domain.UserVO;

public interface UserDAO {

	int insertMemberJoin(UserVO vo); // 사용자 회원가입

	UserVO selectMemberLogin(UserVO vo); // 사용자 로그인
	
	UserVO selectMemberName(UserVO userVO);	// 회원명 검색

	UserVO updateMemberModify(UserVO vo); // 개인정보 수정

	UserVO updateMemberDelete(UserVO vo); // 회원탈퇴

	List<PointVO> selectPoint(PointVO vo); // 마이페이지 - 먹포인트 현황

	int insertPoint(PointVO vo); // 마이페이지 - 먹포인트 출력

	List<PointVO> selectPointDate(PointVO vo); // 마이페이지 - 먹포인트 현황 (날짜검색)

	PointVO selectPointCharge(PointVO pointVO); // 마이페이지 - 현재포인트

	FavoriteVO selectFS(FavoriteVO vo); // 마이페이지 - 즐겨찾기목록

	ReviewVO selectReview(ReviewVO vo); // 마이페이지 - 내가 쓴 후기
}
