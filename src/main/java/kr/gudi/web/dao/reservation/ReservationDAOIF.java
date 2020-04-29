package kr.gudi.web.dao.reservation;

import java.util.List;
import java.util.Map;

import kr.gudi.web.bean.ExhibitionBean;

public interface ReservationDAOIF {

	public List<Map<String, Object>> getExhibitionList();
	public Map<String, Object> getExhibitionOne(ExhibitionBean Eb);
	public int payment(ExhibitionBean Eb);
}
