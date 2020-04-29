package kr.gudi.web.service.reservation;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.bean.ExhibitionBean;
import kr.gudi.web.dao.reservation.ReservationDAO;

@Service
public class ReservationService implements ReservationServiceIF {

	@Autowired private ReservationDAO rd;
	
	// 전시 리스트 가져오기
	@Override
	public Map<String, Object> getExhibitionList() {
		System.out.println("ReservationService : getExhibitionList()");
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", rd.getExhibitionList());
		return resultMap;
	}
	
	// 전시 리스트 중 하나를 선택
	@Override
	public Map<String, Object> getExhibitionOne(ExhibitionBean Eb) {
		System.out.println("ReservationService : " + Eb);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", rd.getExhibitionOne(Eb));
		return resultMap;
	}

	@Override
	public Map<String, Object> payment(ExhibitionBean Eb) {
		System.out.println("ReservationService-payment : " + Eb);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("result", rd.payment(Eb));
		return resultMap;
	}

}
