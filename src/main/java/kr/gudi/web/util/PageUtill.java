package kr.gudi.web.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

@Component
public class PageUtill {

	private List<String> pageList;	
	
	public List<String> getPage(HttpServletRequest req){
		pageList = new ArrayList<String>();
		try {
			String path = req.getSession().getServletContext().getRealPath("WEB-INF/views/page");
			File dir = new File(path);
			for(String page : dir.list()) {
				String fileNm = page.substring(0, page.lastIndexOf("."));
				pageList.add(fileNm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pageList;
	}
	
	public boolean checkView(String view, HttpServletRequest req) {
		boolean check = true;
		for(String page : getPage(req)) {
			if(page.toLowerCase().equals(view.toLowerCase())) {
				check = false;
				break;
			}
		}
		return check;
	}
	
}
