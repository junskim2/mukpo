package user.dao;

import user.domain.UserVO;

public interface UserDAO {
	
	   int userInsert(UserVO vo);
	   
	   UserVO userLogin(UserVO vo);
	   

}
