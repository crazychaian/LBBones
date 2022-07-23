package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class XrayLandmarkDAO {
	
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
	

	public List<XrayLandmarkVO> selectXrayLm(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<XrayLandmarkVO> xrayList = session.selectList("selectXrayLm", p_seq);

		session.close();

		return xrayList;

	}
	
	public List<XrayLandmarkVO> xraySelect(int xray_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<XrayLandmarkVO> xrayList = session.selectOne("xraySelect", xray_seq);

		session.close();

		return xrayList;

	}
	
}
