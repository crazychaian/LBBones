package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CustomerDAO {
	

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {

			String resource = "mapper/config.xml";

			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	// =============================================================================

	
	public int cusJoin(CustomerVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("cusJoin", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public List<CustomerVO> cusSearch(String search) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<CustomerVO> list = session.selectList("cusSearch", search);
		
		session.close();
		
		return list;
		
	}
	
	public int cusUpdate(CustomerVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("cusUpdate", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public int cusDelete(int cus_cnt) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("cusDelete", cus_cnt);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public List<CustomerVO> cusList(int doc_cnt) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<CustomerVO> cusList = session.selectList("cusList", doc_cnt);

		session.close();

		return cusList;

	}
}
