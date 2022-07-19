package model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class XrayDAO {

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
	
	public int xrayJoin(XrayVO vo) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int cnt = 0;

		try {
			
			cnt = session.insert("xrayJoin", vo);

		} catch (Exception e) {
			e.printStackTrace();
		}

		session.close();

		return cnt;
	}
	
	public List<XrayVO> selectXray(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<XrayVO> xrayList = session.selectList("selectXray",p_seq);

		session.close();

		return xrayList;

	}
	
	public XrayVO viewXray(int xray_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		XrayVO xvo = session.selectOne("viewXray", xray_seq);

		session.close();

		return xvo;

	}
	
	public List<XrayVO> xrayDateList(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<XrayVO> xrayDateList = session.selectList("xrayDateList",p_seq);

		session.close();

		return xrayDateList;

	}
	
	public List<XrayVO> xraySearchList(int p_seq) {

		SqlSession session = sqlSessionFactory.openSession(true);

		List<XrayVO> xraySearchList = session.selectList("xraySearchList",p_seq);

		session.close();
		
		return xraySearchList;

	}
	

}
