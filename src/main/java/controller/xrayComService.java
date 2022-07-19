package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.XrayCommentDAO;
import model.XrayCommentVO;

@WebServlet("/xrayComService")
public class xrayComService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int xray_seq = Integer.parseInt(request.getParameter("xray_seq"));
		String doc_id = request.getParameter("doc_id");
		String cmt_content = request.getParameter("cmt_content");

		XrayCommentVO xcvo = new XrayCommentVO();
		xcvo.setXray_seq(xray_seq);
		xcvo.setDoc_id(doc_id);
		xcvo.setCmt_content(cmt_content);

		XrayCommentDAO xcdao = new XrayCommentDAO();
		int cnt = xcdao.insertCom(xcvo);

		if (cnt > 0) {

			response.setContentType("text/html; charset = utf-8");

			// out 객체 만들기
			PrintWriter out = response.getWriter();

			// 응답
			out.print(xcvo == null);

		} else {

			System.out.println("댓글 등록 실패");

		}

	}
}
