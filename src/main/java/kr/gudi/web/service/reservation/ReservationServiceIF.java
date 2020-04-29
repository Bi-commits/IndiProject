package kr.gudi.web.service.reservation;

import java.util.Map;

import kr.gudi.web.bean.ExhibitionBean;

public interface ReservationServiceIF {

	public Map<String, Object> getExhibitionList();
	public Map<String, Object> getExhibitionOne(ExhibitionBean Eb);
	public Map<String, Object> payment(ExhibitionBean Eb);
}
