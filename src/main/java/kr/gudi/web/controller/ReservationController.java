package kr.gudi.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import kr.gudi.web.bean.ExhibitionBean;
import kr.gudi.web.service.reservation.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired private ReservationService rs;
	
	// 예약페이지에서 하나를 선택 >> detailnum으로 매핑
	@RequestMapping(value = "/reservation/detail", method = RequestMethod.GET)
	public RedirectView getexhibition(@RequestParam("choice") String choice, ExhibitionBean Eb, HttpSession session) {
		System.out.println("ReservationController");
		System.out.println(choice);
		session.removeAttribute("choice");						// 초기화를 위해 삭제
		session.setAttribute("choice", choice);
		return new RedirectView("/payment");
		
	}
	
	//예약확인페이지
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> payment(ExhibitionBean Eb) {
		System.out.println("Exhibition Payment");
		System.out.println(Eb);
		return rs.payment(Eb);
	}
	
}
