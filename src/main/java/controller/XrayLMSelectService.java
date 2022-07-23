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

import model.XrayLandmarkDAO;
import model.XrayLandmarkVO;

@WebServlet("/XrayLMSelectService")
public class XrayLMSelectService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		int xray_seq = Integer.parseInt(request.getParameter("xray_seq"));
		System.out.println(xray_seq);
		
		XrayLandmarkDAO xldao = new XrayLandmarkDAO();
		System.out.println(xldao);
		List<XrayLandmarkVO> xlvoList = xldao.xraySelect(xray_seq);
		System.out.println(xlvoList);
		
		HttpSession session = request.getSession();
		session.setAttribute("xlvoList", xlvoList);
		response.sendRedirect("updateChart-Real.jsp");
		
	}

}
