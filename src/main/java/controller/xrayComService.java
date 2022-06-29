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

		request.setCharacterEncoding("EUC-KR");

		int xr_cnt = Integer.parseInt(request.getParameter("xr_cnt"));
		String xr_com = request.getParameter("xr_com");

		XrayCommentVO cvo = new XrayCommentVO();
		cvo.setXr_cnt(xr_cnt);
		cvo.setXr_com(xr_com);

		XrayCommentDAO qcdao = new XrayCommentDAO();
		int cnt = qcdao.insertCom(cvo);

		if (cnt > 0) {

			response.setContentType("text/html; charset = utf-8");

			// out 객체 만들기
			PrintWriter out = response.getWriter();

			// 응답
			out.print(cvo == null);

		} else {

			System.out.println("댓글 등록 실패");

		}

	}
}
