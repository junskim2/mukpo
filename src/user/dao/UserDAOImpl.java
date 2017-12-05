package user.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import store.domain.StoreVO;
import user.domain.FavoriteVO;
import user.domain.PointVO;
import user.domain.ReviewVO;
import user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{

		//신주용 
		@Autowired
		private SqlSessionTemplate commonss;
	
	   @Autowired
	   private SqlSessionTemplate userss;

		public int insertMemberJoin(UserVO vo) { // 사용자 회원가입  신주용
			int result = 0;
			result = userss.insert("user.userInsert", vo);
			return result;
		}

		@Override
		public UserVO selectMemberLogin(UserVO vo) { // main - 사용자 로그인 신주용
			UserVO userVO = commonss.selectOne("user.userLogin", vo);
			return userVO;
		}
	
// 1203 아름 리턴형 수정
		@Override
		public int updateMemberModify(UserVO vo) { // 마이페이지 - 사용자 회원정보수정
			return userss.update("user.updateMemberModify", vo);
		}
	
// 1203 아름 리턴형 수정
		@Override
		public int updateMemberDelete(UserVO vo) { //마이페이지 - 회원탈퇴
			return userss.update("user.updateMemberDelete", vo);
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
		public List<HashMap> selectLatelyReview(String mp) { // 메인 - 생생리뷰
			HashMap map = new HashMap();
			map.put("rMpwp", mp);
			return userss.selectList("user.selectLatelyReview", map);
		}
		
// 1201 민우 추가
		@Override
		public List<StoreVO> getAddrList(StoreVO storeVO) { // 마이페이지 - 주간예약 매장검색 
			HashMap map = new HashMap();
			map.put("search", storeVO.getSearch());
			return userss.selectList("user.getaddr", map);
			
		}
//주용
		@Override
		public int insertReview(ReviewVO vo) {		//마이페이지 - 예약내역 리뷰 작성
			int result = 0;
			return userss.insert("user.reviewInsert", vo);
		}
		
// 1202 아름 회원정보 수정 전 비밀번호 확인		
		@Override
		public UserVO selectMemberModifyCheck(UserVO vo) {
			return userss.selectOne("user.selectMemberModifyCheck", vo);
		}

// 1204 아름 즐겨찾기 추가
		@Override
		public int insertFavorite(FavoriteVO vo) {
			return userss.insert("user.insertFavorite", vo);
		}

// 1204 아름 즐겨찾기 삭제
		@Override
		public int deleteFavorite(FavoriteVO vo) {
			return userss.delete("user.deleteFavorite", vo);
		}
}