package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusSearchService2")
public class cusSearchService2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String search = request.getParameter("pSearch");

		CustomerDAO dao = new CustomerDAO();
		List<CustomerVO> pList2 = dao.pSearch("%" + search + "%");
		
		System.out.println(pList2);
		request.setAttribute("pList", pList2);
		

		RequestDispatcher rd = request.getRequestDispatcher("serviceMain-Real.jsp");
		rd.forward(request, response);
		


	}

}
