package kr.gudi.web.service.signup;

import java.util.Map;

import kr.gudi.web.bean.UserBean;

public interface SignupServiceIF {


	public int signup(Map<String, Object> paramMap);

	public int idcheck(Map<String, Object> paramMap);

}
