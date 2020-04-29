package kr.gudi.web.dao.login;

import java.util.Map;

import kr.gudi.web.bean.UserBean;

public interface LoginDAOIF {

	public UserBean login(Map<String, String> params);
}
