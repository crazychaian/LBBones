package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LandmarkDAO;
import model.LandmarkVO;
import model.XrayCommentDAO;
import model.XrayCommentVO;
import model.XrayDAO;
import model.XrayVO;

@WebServlet("/xrayViewService")
public class xrayViewService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int xr_cnt = Integer.parseInt(request.getParameter("xr_cnt"));

		LandmarkDAO ldao = new LandmarkDAO();
		LandmarkVO lvo = ldao.viewLM(xr_cnt);

		XrayDAO xdao = new XrayDAO();
		XrayVO xvo = xdao.viewXray(xr_cnt);

		XrayCommentDAO cdao = new XrayCommentDAO();
		List<XrayCommentVO> comList = cdao.selectXrayCom(xr_cnt);

		HttpSession session1 = request.getSession();
		session1.setAttribute("lvo", lvo);

		HttpSession session2 = request.getSession();
		session2.setAttribute("xvo", xvo);

		HttpSession session3 = request.getSession();
		session3.setAttribute("comList", comList);

		response.sendRedirect("");

	}

}
