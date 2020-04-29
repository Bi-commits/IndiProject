package kr.gudi.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.gudi.web.bean.UserBean;
import kr.gudi.web.service.signup.SignupServiceIF;

@Controller
public class SignupController {

	@Autowired private SignupServiceIF ssif;
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public @ResponseBody int signup(@RequestBody Map<String, Object> paramMap, UserBean ub, HttpSession session) throws Exception {
		System.out.println("signup : " + paramMap);
		return ssif.signup(paramMap);
	}
	
	@RequestMapping(value = "/idcheck", method = RequestMethod.PATCH)
	public @ResponseBody int idcheck(@RequestBody Map<String, Object> paramMap) throws Exception {
		System.out.println("ID 체크 과정");
		return ssif.idcheck(paramMap);
	}
	
	
	
	
}
