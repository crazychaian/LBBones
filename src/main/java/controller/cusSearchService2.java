package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusSearchService")
public class cusSearchService2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String search = request.getParameter("search");

		CustomerDAO dao = new CustomerDAO();
		List<CustomerVO> pList = dao.pSearch("%" + search + "%");
		
		request.setAttribute("pList", pList);

		RequestDispatcher rd = request.getRequestDispatcher("serviceMain.jsp");
		rd.forward(request, response);

	}

}
