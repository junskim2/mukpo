package user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.domain.FavoriteVO;
import user.domain.PointVO;
import user.domain.ReviewVO;
import user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

	   @Autowired
	   private SqlSessionTemplate commonss;

	public int insertMemberJoin(UserVO vo) { //사용자 회원가입

		return 0;
	}

	@Override
	public UserVO selectMemberLogin(UserVO vo) { // 사용자 로그인
		UserVO userVO = null;
		
		try {
			userVO = commonss.selectOne("user.userLogin", vo);
		}catch(Exception e) {
			System.out.println("UserDAOImpl / idLogin 실패"+ e.getMessage());
		}
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
	public PointVO selectPoint(PointVO vo) { //마이페이지 - 포인트 현황
		PointVO pointVO = null;
		
		return pointVO;
	}

	@Override
	public int insertPoint(PointVO vo) { //마이페이지 - 포인트 적립
		
		return 0;
		}

	@Override
	public FavoriteVO selectFS(FavoriteVO vo) { //마이페이지 - 즐겨찾기 상점 목록
		FavoriteVO favoriteVO = null;
		
		return favoriteVO;
	}

	@Override
	public ReviewVO selectReview(ReviewVO vo) { //마이페이지 - 내가 쓴 리뷰
		ReviewVO reviewVO = null;
		
		return reviewVO;
	}

}