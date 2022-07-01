package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusSearchService")
public class cusSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String search = request.getParameter("search");

		CustomerDAO dao = new CustomerDAO();
		List<CustomerVO> cuslist = dao.cusSearch("%" + search + "%");
		
		Gson gson = new Gson();
		
		String jsonCusList = gson.toJson(cuslist);

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		
		out.print(jsonCusList);

	}

}
