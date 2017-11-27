package user.dao;

import user.domain.UserFavoriteVO;
import user.domain.UserPointVO;
import user.domain.UserReviewVO;
import user.domain.UserVO;

public interface UserDAO {
	
	   int insertMemberJoin(UserVO vo); //사용자 회원가입

	   UserVO selectMemberLogin(UserVO vo); //사용자 로그인
	   
	   UserVO updateMemberModify(UserVO vo); //개인정보 수정
	   
	   UserVO updateMemberDelete(UserVO vo); //회원탈퇴
	   
	  UserPointVO selectPoint(UserPointVO vo); //마이페이지 - 먹포인트 현황
	  
	  int insertPoint(UserPointVO vo); //마이페이지 - 먹포인트 출력
	 
	  UserFavoriteVO selectFS(UserFavoriteVO vo); //마이페이지 - 즐겨찾기목록
	  
	  UserReviewVO selectReview(UserReviewVO vo); //마이페이지 - 내가 쓴 후기
}
