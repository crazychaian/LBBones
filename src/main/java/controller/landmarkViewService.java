package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.LandmarkDAO;
import model.LandmarkVO;

@WebServlet("/landmarkViewService")
public class landmarkViewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		int xray_seq = Integer.parseInt(request.getParameter("xray_seq"));
		
		LandmarkDAO lmdao = new LandmarkDAO();
		LandmarkVO lmvo = lmdao.lmview(xray_seq);
		
		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();

		out.print(lmvo);
		
	}

}
