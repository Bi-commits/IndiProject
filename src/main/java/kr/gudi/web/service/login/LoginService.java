package kr.gudi.web.service.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.gudi.web.bean.UserBean;
import kr.gudi.web.dao.login.LoginDAO;

@Service
public class LoginService implements LoginServiceIF {

	@Autowired private LoginDAO ld;
	
	@Override
	public Map<String, String> login(Map<String, String> params, HttpSession session) {		//params:데이터 , session:로그인정보유지
		System.out.println("loginservice : " + params);
		UserBean ub = ld.login(params);
		Map<String, String> loginmap = new HashMap<String, String>();
		//ID 비교
		//ID가 존재하지 않을때
		if(ub == null) {
			System.out.println("ID가 없습니다");
			loginmap.put("MSG", "ID가 없습니다");					// 메시지 출력
			loginmap.put("number", "1");						// 숫자로 비교(1 : ID없음)
		} else {
			//ID 존재
			System.out.println("ID 존재");
			//PW 비교
			//PW가 일치할 때
			if(ub.getM_PW().equals(params.get("M_PW"))) {
				System.out.println("비밀번호 일치");				
				System.out.println("로그인 성공");
				loginmap.put("MSG", "회원정보가 일치합니다. 메인페이지로 이동합니다.");			// 메시지 출력
				loginmap.put("number", "2");					// 숫자로 비교(2 : ID,PW 모두 일치)
				session.setAttribute("USER", ub);				// 로그인 성공 >> 사용자 정보 유지(세션처리)
				System.out.println(session);					// 세션 코드 출력
			} else {
				//PW가 일치하지 않을 때
				System.out.println("비밀번호 불일치");				
				System.out.println("로그인 실패");					
				loginmap.put("MSG", "비밀번호가 일치하지 않습니다");	// 메시지 출력
				loginmap.put("number", "3");					// 숫자로 비교(3 : ID는 존재하지만 PW가 일치하지 않음)
			}
			
		}
		return loginmap;
	}

}

