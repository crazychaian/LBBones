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
import model.XrayCommentDAO;
import model.XrayCommentVO;

@WebServlet("/landmarkService")
public class landmarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");

		int xray_seq = Integer.parseInt(request.getParameter("xray_seq"));
		int l_top_x = Integer.parseInt(request.getParameter("l_top_x"));
		int l_top_y = Integer.parseInt(request.getParameter("l_top_y"));
		int l_mid_x = Integer.parseInt(request.getParameter("l_mid_x"));
		int l_mid_y = Integer.parseInt(request.getParameter("l_mid_y"));
		int l_bot_x = Integer.parseInt(request.getParameter("l_bot_x"));
		int l_bot_y = Integer.parseInt(request.getParameter("l_bot_y"));
		int r_top_x = Integer.parseInt(request.getParameter("r_top_x"));
		int r_top_y = Integer.parseInt(request.getParameter("r_top_y"));
		int r_mid_x = Integer.parseInt(request.getParameter("r_mid_x"));
		int r_mid_y = Integer.parseInt(request.getParameter("r_mid_y"));
		int r_bot_x = Integer.parseInt(request.getParameter("r_bot_x"));
		int r_bot_y = Integer.parseInt(request.getParameter("r_bot_y"));
		Float l_femur_len = Float.parseFloat(request.getParameter("l_femur_len"));
		Float l_tibia_len = Float.parseFloat(request.getParameter("l_tibia_len"));
		Float l_total_len = Float.parseFloat(request.getParameter("l_total_len"));
		Float r_femur_len = Float.parseFloat(request.getParameter("r_femur_len"));
		Float r_tibia_len = Float.parseFloat(request.getParameter("r_tibia_len"));
		Float r_total_len = Float.parseFloat(request.getParameter("r_total_len"));
		Float lr_femur_gap = Float.parseFloat(request.getParameter("lr_femur_gap"));
		Float lr_tibia_gap = Float.parseFloat(request.getParameter("lr_tibia_gap"));
		Float lr_total_gap = Float.parseFloat(request.getParameter("lr_total_gap"));
		
		String doc_id = request.getParameter("doc_id");
		String cmt_content = request.getParameter("cmt_content");
		System.out.println(cmt_content);

		LandmarkVO lmvo = new LandmarkVO();
		lmvo.setXray_seq(xray_seq);
		lmvo.setL_top_x(l_top_x);
		lmvo.setL_top_y(l_top_y);
		lmvo.setL_mid_x(l_mid_x);
		lmvo.setL_mid_y(l_mid_y);
		lmvo.setL_bot_x(l_bot_x);
		lmvo.setL_bot_y(l_bot_y);
		lmvo.setR_top_x(r_top_x);
		lmvo.setR_top_y(r_top_y);
		lmvo.setR_mid_x(r_mid_x);
		lmvo.setR_mid_y(r_mid_y);
		lmvo.setR_bot_x(r_bot_x);
		lmvo.setR_bot_y(r_bot_y);;
		lmvo.setL_femur_len(l_femur_len);
		lmvo.setL_tibia_len(l_tibia_len);
		lmvo.setL_total_len(l_total_len);
		lmvo.setR_femur_len(r_femur_len);
		lmvo.setR_tibia_len(r_tibia_len);
		lmvo.setR_total_len(r_total_len);
		lmvo.setLr_femur_gap(lr_femur_gap);
		lmvo.setLr_tibia_gap(lr_tibia_gap);
		lmvo.setLr_total_gap(lr_total_gap);
		
		LandmarkDAO lmdao = new LandmarkDAO();
		System.out.println("lmvo:" + lmvo);
		System.out.println("lmdao:" + lmdao);
		int cnt = lmdao.lmjoin(lmvo);
		System.out.println("cnt:" + cnt);
		
		
		XrayCommentVO xcvo = new XrayCommentVO();
		xcvo.setXray_seq(xray_seq);
		xcvo.setDoc_id(doc_id);
		xcvo.setCmt_content(cmt_content);
		
		XrayCommentDAO xcdao = new XrayCommentDAO();
		System.out.println("xcvo:" + xcvo);
		System.out.println("xcdao:" + xcdao);
		int cnt2 = xcdao.insertCom(xcvo);
		System.out.println("cnt2 :" +  cnt2);
		
		
		boolean res;
		if(cnt >0 && cnt2 >0) {
			res = true;
		}else {
			res = false;
		}
		
		response.setContentType("text/html; charset=utf-8");

		PrintWriter out = response.getWriter();

		out.print(res);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}
