package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusSearchService")
public class cusSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		String search = request.getParameter("search");

		CustomerDAO dao = new CustomerDAO();
		List<CustomerVO> cuslist = dao.cusSearch("%" + search + "%");

		request.setAttribute("cuslist", cuslist);

		RequestDispatcher rd = request.getRequestDispatcher("");
		rd.forward(request, response);

	}

}
