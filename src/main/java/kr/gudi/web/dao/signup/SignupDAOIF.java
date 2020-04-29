package kr.gudi.web.dao.signup;

import java.util.Map;

import kr.gudi.web.bean.UserBean;

public interface SignupDAOIF {


	public int signup(Map<String, Object> paramMap);

	public int idcheck(Map<String, Object> paramMap);

}
