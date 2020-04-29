package kr.gudi.web.service.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import kr.gudi.web.bean.UserBean;

public interface LoginServiceIF {
	
	public Map<String, String> login(Map<String, String> params, HttpSession session);
	
}
