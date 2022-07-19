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

	
	public int pJoin(CustomerVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("pJoin", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public List<CustomerVO> pSearch(String search) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<CustomerVO> list = session.selectList("pSearch", search);
		
		session.close();
		
		return list;
		
	}
	
	public int pUpdate(CustomerVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("pUpdate", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public int pDelete(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("pDelete", p_seq);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public List<CustomerVO> pList(String doc_id) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<CustomerVO> pList = session.selectList("pList", doc_id);

		session.close();

		return pList;

	}
	
	public CustomerVO pvo(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		CustomerVO pvo = session.selectOne("pvo", p_seq);

		session.close();

		return pvo;

	}
}
