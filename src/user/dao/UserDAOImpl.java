package user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.domain.UserFavoriteVO;
import user.domain.UserPointVO;
import user.domain.UserReviewVO;
import user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	//   @Autowired
	//   private SqlSessionTemplate ss;

	public int insertMemberJoin(UserVO vo) { //사용자 회원가입

		return 0;
	}

	@Override
	public UserVO selectMemberLogin(UserVO vo) { // 사용자 로그인
		UserVO userVO = null;

		return userVO;
	}

	@Override
	public UserVO updateMemberModify(UserVO vo) { //마이페이지 - 사용자 회원정보수정
		UserVO userVO = null;

		return userVO;
	}

	@Override
	public UserVO updateMemberDelete(UserVO vo) { //마이페이지 - 회원탈퇴
		UserVO userVO = null;

		return userVO;
	}

	@Override
	public UserPointVO selectPoint(UserPointVO vo) { //마이페이지 - 포인트 현황
		UserPointVO pointVO = null;
		
		return pointVO;
	}

	@Override
	public int insertPoint(UserPointVO vo) { //마이페이지 - 포인트 적립
		
		return 0;
		}

	@Override
	public UserFavoriteVO selectFS(UserFavoriteVO vo) { //마이페이지 - 즐겨찾기 상점 목록
		UserFavoriteVO favoriteVO = null;
		
		return favoriteVO;
	}

	@Override
	public UserReviewVO selectReview(UserReviewVO vo) { //마이페이지 - 내가 쓴 리뷰
		UserReviewVO reviewVO = null;
		
		return reviewVO;
	}

}