package model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class LandmarkDAO {
	
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
	
	public int lmjoin(LandmarkVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;
		try {
			cnt = session.insert("lmjoin", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;

	}
	
	public LandmarkVO lmview(int xray_seq) {
		
		SqlSession session = sqlSessionFactory.openSession(true);

		LandmarkVO lmview = session.selectOne("lmview", xray_seq);

		session.close();

		return lmview;

		
	}
	
}
