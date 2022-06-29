package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.XrayDAO;
import model.XrayVO;

@WebServlet("/xrayJoinService")
public class xrayJoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("euc-kr");
		
		// �غ�
		// C:\Users\smhrd\Desktop\Web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\MessageSystem\img
		String savePath = request.getServletContext().getRealPath("img");
		int maxSize = 5 * 1024 * 1024; // 5�ް� ����Ʈ
		String encoding = "euc-kr";

		// multipartRequest ����
		MultipartRequest multi = new MultipartRequest(request, savePath, // ��� ��������
				maxSize, // ���뷮
				encoding, // ���ڵ� ���
				new DefaultFileRenamePolicy()); // �ߺ����� ������ ���Ƿ� ����

		int doc_cnt = Integer.parseInt(multi.getParameter("doc_cnt"));
		int cus_cnt = Integer.parseInt(multi.getParameter("cus_cnt"));
		String xr_name = multi.getFilesystemName("xr_name");

		XrayVO xvo = new XrayVO();
		xvo.setDoc_cnt(doc_cnt);
		xvo.setCus_cnt(cus_cnt);
		xvo.setXr_name(xr_name);

		XrayDAO dao = new XrayDAO();
		int cnt = dao.xrayJoin(xvo);

		if (cnt > 0) {
			System.out.println("~~�Խñ� �ۼ� ����~~");
			response.sendRedirect("");
		} else {
			System.out.println("!!�Խñ� �ۼ� ����!!");
			response.sendRedirect("");
		}

	
	}

}
