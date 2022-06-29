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

@WebServlet("/xrayListService")
public class xrayListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		int doc_cnt = Integer.parseInt(request.getParameter("doc_cnt"));
		int cus_cnt = Integer.parseInt(request.getParameter("cus_cnt"));
		
		XrayVO xvo = new XrayVO(doc_cnt, cus_cnt);
		
		XrayDAO dao = new XrayDAO();
		List<XrayVO> xrayList = dao.selectXray(xvo);

		request.setAttribute("xrayList", xrayList);

		RequestDispatcher rd = request.getRequestDispatcher("");
		rd.forward(request, response);

	}

}
