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
import model.SearchVO;

@WebServlet("/cusSearchService")
public class cusSearchService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String p_name = request.getParameter("search");
		String doc_id = request.getParameter("doc_id");
		System.out.println(p_name);
		System.out.println(doc_id);
		

		
		SearchVO svo = new SearchVO(doc_id, "%" + p_name + "%");
		System.out.println(svo);
		CustomerDAO dao = new CustomerDAO();
		System.out.println(dao);
		List<SearchVO> cuslist = dao.pSearch(svo);
		System.out.println(cuslist);
		
		Gson gson = new Gson();
		
		String jsonCusList = gson.toJson(cuslist);

		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();
		
		out.print(jsonCusList);

	}

}
