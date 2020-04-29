package kr.gudi.web.service.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.gudi.web.dao.main.ForteDao;

@Service
public class ForteService implements ForteServiceInterface {

	@Autowired
	ForteDao fd;
	
	@Override
	public int insert(Map<String, Object> paramMap) {
		return fd.setInsert(paramMap);
	}

}
