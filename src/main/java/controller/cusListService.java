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

@WebServlet("/cusListService")
public class cusListService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String doc_id = request.getParameter("doc_id");
		
		CustomerDAO ddao = new CustomerDAO();
		List<CustomerVO> pList = ddao.pList(doc_id);

		request.setAttribute("pList", pList);

		RequestDispatcher rd = request.getRequestDispatcher("serviceMain-Real.jsp");
		rd.forward(request, response);
	
	}

}
