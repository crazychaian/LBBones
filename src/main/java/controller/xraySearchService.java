package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.XrayDAO;
import model.XrayVO;

@WebServlet("/xraySearchService")
public class xraySearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		int cus_cnt = Integer.parseInt(request.getParameter("cus_cnt"));

		XrayDAO dao = new XrayDAO();
		List<XrayVO> xraySearchList = dao.xraySearchList(cus_cnt);

		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(xraySearchList);

	}

}
