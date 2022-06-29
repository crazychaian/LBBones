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
	
	public LandmarkVO viewLM(int lm_cnt) {

		SqlSession session = sqlSessionFactory.openSession(true);

		LandmarkVO bvo = session.selectOne("viewLM", lm_cnt);

		session.close();

		return bvo;

	}
	
	
	
	

}
