package controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.XrayDAO;
import model.XrayVO;

import org.json.simple.JSONObject;

@WebServlet("/uploadService")
public class uploadService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String savePath = request.getSession().getServletContext().getRealPath("img");
		int maxSize = 20 * 1024 * 1024;
		String encoding = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, // 어디에 저장할지
				maxSize, // 허용 용량
				encoding, // 인코딩 방식
				new DefaultFileRenamePolicy());

// 파라미터 수집

// 파일이름 출력
// getFilesystemName("Name")
		String fileName = multi.getFilesystemName("file");
		int p_seq = Integer.parseInt(multi.getParameter("p_seq"));
		System.out.println(fileName);
		String file_loc = (savePath + '\\' + fileName);
		System.out.println(file_loc);

		
		XrayVO xvo = new XrayVO(); 
		xvo.setP_seq(p_seq); 
		xvo.setXray_img(fileName);
		  
		XrayDAO dao = new XrayDAO(); 
		
		int cnt = dao.xrayJoin(xvo);
		
		XrayDAO newdao = new XrayDAO(); 
		XrayVO newxvo = newdao.findXraySeq(fileName);
		 
		if(cnt >0) {
		 

		File file = new File(file_loc);
		System.out.println(file);
		BufferedImage bi = ImageIO.read(file);
//		BufferedImage bi = ImageIO.read(new File(file));	
		System.out.println(bi.getHeight());
		System.out.println(bi.getWidth());
		System.out.println("작성성공");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		// 응답
//		out.print(fileName);
		
		
		JSONObject data = new JSONObject();
		data.put("name", fileName);
		data.put("height", bi.getHeight());
		data.put("width", bi.getWidth());
		data.put("thisXray_seq", newxvo.getXray_seq() );
		data.put("thisXray_date", newxvo.getXray_date() );
		System.out.println(data);
		System.out.println(newxvo.getXray_date());

		out.print(data);

		
		} else { System.out.println("실패"); }
		

	}

}
