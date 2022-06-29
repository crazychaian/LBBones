package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CustomerDAO;
import model.CustomerVO;

@WebServlet("/cusUpdateService")
public class cusUpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("euc-kr");

		int cus_cnt = Integer.parseInt(request.getParameter("cus_cnt"));
		String cus_name = request.getParameter("cus_name");
		String cus_birth = request.getParameter("cus_birth");
		String cus_mw = request.getParameter("cus_mw");
		
		CustomerVO cvo = new CustomerVO(cus_cnt, cus_name,cus_birth,cus_mw);
		
		CustomerDAO dao = new CustomerDAO();
		int cnt = dao.cusUpdate(cvo);
		
		response.setContentType("text/html; charset = utf-8");

		PrintWriter out = response.getWriter();

		out.print(cnt);
	
	
	
	
	
	
	
	
	}

}
