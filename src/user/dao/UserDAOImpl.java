package user.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
   
//   @Autowired
//   private SqlSessionTemplate ss;

   @Override
   public int userInsert(UserVO vo) {
      int result = 0;
      try {
//      result = ss.insert("user.userInsert", vo);
      }catch(Exception e){
    	  System.out.println("UserDAOImpl / UserInsert 실패 : " + e.getMessage());
      }
      return result;
   }

   @Override
   public UserVO userLogin(UserVO vo) {
      UserVO userVO = null;
      try {
//      userVO = ss.selectOne("user.userLogin",vo);
      }catch(Exception e) {
    	  System.out.println("userDAOImpl / userLogin 실패 : " + e.getMessage());
      }
      return userVO;
   }

}