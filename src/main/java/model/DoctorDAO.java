package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DoctorDAO {

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

	public int join(DoctorVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("join", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}

	public DoctorVO login(DoctorVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		DoctorVO dvo = session.selectOne("login", vo);

		session.close();

		return dvo;

	}
	
	public DoctorVO idCheck(String doc_id) {

		SqlSession session = sqlSessionFactory.openSession(true);

		DoctorVO dvo = session.selectOne("idCheck", doc_id);

		session.close();

		return dvo;

	}
	
	public List<DoctorVO> docList() {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<DoctorVO> list = session.selectList("docList");

		session.close();

		return list;

	}
	
	public List<DoctorVO> docSearch(String search) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		List<DoctorVO> list = session.selectList("docSearch", search);
		
		session.close();
		
		return list;
		
	}
	
	public DoctorVO doccntFind(String doc_id) {

		SqlSession session = sqlSessionFactory.openSession(true);

		DoctorVO dvo = session.selectOne("doccntFind", doc_id);

		session.close();

		return dvo;

	}

}
