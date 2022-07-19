package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;
import model.CustomerVO;
import model.LandmarkDAO;
import model.LandmarkVO;
import model.XrayDAO;
import model.XrayVO;

@WebServlet("/xrayListService")
public class xrayListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		int p_seq = Integer.parseInt(request.getParameter("p_seq"));
		
		XrayDAO xdao = new XrayDAO();
		List<XrayVO> xrayList = xdao.selectXray(p_seq);
		
		CustomerDAO cdao = new CustomerDAO();
		CustomerVO pvo = cdao.pvo(p_seq);
		
		HttpSession session1 = request.getSession();
		session1.setAttribute("xrayList", xrayList);
		
		HttpSession session2 = request.getSession();
		session2.setAttribute("pvo", pvo);
		
		response.sendRedirect("idHistoryList.jsp");

	}

}
