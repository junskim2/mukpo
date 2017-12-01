package user.dao;

import java.util.HashMap;
import java.util.List;

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
	   private SqlSessionTemplate userss;

	   public int insertMemberJoin(UserVO vo) { //사용자 회원가입

		   return 0; 
	   }

		@Override
		public UserVO selectMemberLogin(UserVO vo) { // 사용자 로그인
			UserVO userVO = null;
			
			try {
				userVO = userss.selectOne("user.userLogin", vo);
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
		public FavoriteVO selectFS(FavoriteVO vo) { //마이페이지 - 즐겨찾기 상점 목록
			FavoriteVO favoriteVO = null;
			
			return favoriteVO;
		}
	
		@Override
		public ReviewVO selectReview(ReviewVO vo) { //마이페이지 - 내가 쓴 리뷰
			ReviewVO reviewVO = null;
			
			return reviewVO;
		}
		
	//	1130 아름 포인트관련 내용 추가
		@Override
		public List<PointVO> selectPoint(PointVO vo) { // 마이페이지 - 포인트 현황
			return userss.selectList("user.selectPoint", vo);
		}
	
		@Override
		public int insertPoint(PointVO vo) { // 마이페이지 - 포인트 적립
	
			return userss.insert("user.insertPoint", vo);
		}
		
		@Override
		public List<PointVO> selectPointDate(PointVO vo) {	//마이페이지 - 먹포인트 현황 (날짜검색)
			return userss.selectList("user.selectPointDate", vo);
		}
	
		@Override
		public PointVO selectPointCharge(PointVO pointVO) {	// 마이페이지 - 현재포인트
			return userss.selectOne("user.selectPointCharge", pointVO);
		}
	
		@Override
		public UserVO selectMemberName(UserVO userVO) {	// 회원명 검색
			return userss.selectOne("user.selectMemberName", userVO);
		}
	
//	아름 추가 끝
		
// 1201 현희 추가
		@Override
		public List<ReviewVO> selectLatelyReview(String mp) { // 메인 - 생생리뷰
			HashMap map = new HashMap();
			map.put("rMpwp", mp);
			return userss.selectList("user.selectLatelyReview", map);
		}

}