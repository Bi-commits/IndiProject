package kr.gudi.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import kr.gudi.web.bean.UserBean;
import kr.gudi.web.service.login.LoginServiceIF;

@Controller
public class LoginController {

	@Autowired private LoginServiceIF lsif;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> login(@RequestBody Map<String, String> params , HttpSession session) {
		System.out.println("로그인!");
		System.out.println("loginController : " + params);
		return lsif.login(params, session);
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public RedirectView logout(HttpSession session) throws Exception {
		session.invalidate();
		return new RedirectView("/");
	}
	
}

// lsif.login(ub)
