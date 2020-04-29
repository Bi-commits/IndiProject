package kr.gudi.web.dao.login;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.gudi.web.bean.UserBean;

@Repository
public class LoginDAO implements LoginDAOIF {

	@Autowired SqlSession session;

	@Override
	public UserBean login(Map<String, String> params) {
		System.out.println("loginDAO : " + params);
		return session.selectOne("login.userlogin", params);
	}
}
