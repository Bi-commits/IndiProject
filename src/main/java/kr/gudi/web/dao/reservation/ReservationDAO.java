package kr.gudi.web.dao.reservation;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.gudi.web.bean.ExhibitionBean;

@Repository
public class ReservationDAO implements ReservationDAOIF {

	@Autowired private SqlSession session;
	
	@Override
	public List<Map<String, Object>> getExhibitionList() {
		System.out.println("ReservationDAO : getExhibitionList()");
		return session.selectList("reservation.getExhibitionList");
	}
	@Override
	public Map<String, Object> getExhibitionOne(ExhibitionBean Eb) {
		System.out.println("ReservationDAO : " + Eb);
		return session.selectOne("reservation.getExhibitionOne", Eb);
	}
	@Override
	public int payment(ExhibitionBean Eb) {
		System.out.println("ReservationDAO-payment : " + Eb);
		return session.insert("reservation.payment", Eb);
	}

}
