package kr.gudi.web.dao.signup;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.gudi.web.bean.UserBean;

@Repository
public class SignupDAO implements SignupDAOIF {
	
	@Autowired SqlSession session;
	
	@Override
	public int signup(Map<String, Object> paramMap) {
		System.out.println("signupDAO : " + paramMap);
		return session.insert("login.adduser", paramMap);
	}
	
	@Override
	public int idcheck(Map<String, Object> paramMap) {
		return session.selectOne("signup.idcheck", paramMap);
	}

}
