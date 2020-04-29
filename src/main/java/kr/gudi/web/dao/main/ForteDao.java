package kr.gudi.web.dao.main;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ForteDao implements ForteDaoInterface {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int setInsert(Map<String, Object> param) {
		return sqlSession.insert("sql.insert", param);
	}
	
}
