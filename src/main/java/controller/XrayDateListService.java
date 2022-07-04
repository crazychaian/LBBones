package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.XrayDAO;
import model.XrayVO;

@WebServlet("/XrayDateListService")
public class XrayDateListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		int cus_cnt = Integer.parseInt(request.getParameter("cus_cnt"));
		
		XrayDAO dao = new XrayDAO();
		List<XrayVO> xrayDateList = dao.xrayDateList(cus_cnt);
		
		request.setAttribute("xrayDateList", xrayDateList);

		RequestDispatcher rd = request.getRequestDispatcher("xrayDateList.jsp");
		rd.forward(request, response);
		
	}

}
