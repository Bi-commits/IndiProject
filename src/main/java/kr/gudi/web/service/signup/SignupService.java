package kr.gudi.web.service.signup;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.bean.UserBean;
import kr.gudi.web.dao.signup.SignupDAO;

@Service
public class SignupService implements SignupServiceIF {

	@Autowired private SignupDAO sd;
	
	@Override
	public int signup(Map<String, Object> paramMap) {
		System.out.println("signupservice : " + paramMap);
		return sd.signup(paramMap);
	}
	
	@Override
	public int idcheck(Map<String, Object> paramMap) {
		System.out.println("idcheck : " + paramMap);
		return sd.idcheck(paramMap);
	}
}
