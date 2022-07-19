package controller;

import java.io.IOException;
import java.io.PrintWriter;

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
	
		request.setCharacterEncoding("utf-8");
		
		// �غ�
		// C:\Users\smhrd\Desktop\Web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\MessageSystem\img
		String savePath = request.getServletContext().getRealPath("xray");
		int maxSize = 5 * 1024 * 1024; // 5�ް� ����Ʈ
		String encoding = "utf-8";

		// multipartRequest ����
		MultipartRequest multi = new MultipartRequest(request, savePath, // ��� ��������
				maxSize, // ���뷮
				encoding, // ���ڵ� ���
				new DefaultFileRenamePolicy()); // �ߺ����� ������ ���Ƿ� ����

		int p_seq = Integer.parseInt(multi.getParameter("p_seq"));
		String xray_img = multi.getFilesystemName("xray_img");

		XrayVO xvo = new XrayVO();
		xvo.setP_seq(p_seq);
		xvo.setXray_img(xray_img);

		XrayDAO dao = new XrayDAO();
		int cnt = dao.xrayJoin(xvo);

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);

	
	}

}
