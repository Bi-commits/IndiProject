package kr.gudi.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.gudi.web.bean.ExhibitionBean;
import kr.gudi.web.service.reservation.ReservationService;
import kr.gudi.web.util.PageUtill;

@Controller
public class ViewController {
	
	@Autowired private PageUtill pu;
	@Autowired private ReservationService rs;
	
	@GetMapping("/")
	public String base(HttpServletRequest req) {
		pu.getPage(req);
		return "redirect:/Main";
	}
	
	@GetMapping("/{view}")
	public String view(@PathVariable("view") String view, Model model, HttpServletRequest req) {
		if(pu.checkView(view, req)) {
			return "redirect:/Main";
		}
		model.addAttribute("title", view.toUpperCase());
		model.addAttribute("page", view.toLowerCase());
		return "layout";
	}
	
	@GetMapping("/layout/{view}")
	public String layout(@PathVariable("view") String view) {return "layout/" + view;}
	
	@GetMapping("/view/{page}")
	public String page(@PathVariable("page") String page, Model model, HttpSession session) {
		if("".equals(page) || page == null) {
			return "empty";
		}
		// 예약 페이지(List)
		if("reservation".equals(page.toLowerCase())) {
			System.out.println("reservation");
			model.addAttribute("data", rs.getExhibitionList());
		}
		// 결제 페이지(selectOne)
		if("payment".equals(page.toLowerCase())) {
			System.out.println("payment");
			Object obj = session.getAttribute("choice");			// 선택한 대상을 가져옴
			System.out.println(obj);
			ExhibitionBean Eb = new ExhibitionBean();
			Eb.setE_No(Integer.parseInt(obj.toString()));			// E_No 가져옴
			model.addAttribute("data", rs.getExhibitionOne(Eb));
		}
		return "page/" + page;
	}
	
	
}
