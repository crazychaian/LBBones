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
import javax.swing.filechooser.FileNameExtensionFilter;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.google.gson.Gson;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
/**
 * Servlet implementation class uploadService
 */
@WebServlet("/uploadService")
public class uploadService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savePath = request.getSession().getServletContext().getRealPath("img");
		int maxSize = 20 * 1024 * 1024;
		String encoding = "UTF-8";

		MultipartRequest multi = new MultipartRequest(request, savePath, // 어디에 저장할지
				maxSize, // 허용 용량
				encoding // 인코딩 방식
		);
		

// 파라미터 수집
// 파일이름 출력
// getFilesystemName("Name")
		String fileName = multi.getFilesystemName("file");
		System.out.println(fileName);
		String file_loc = (savePath+'\\'+fileName);
		System.out.println(file_loc);
		
		
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
		data.put("name",fileName);
		data.put("height",bi.getHeight());
		data.put("width",bi.getWidth());
		System.out.println(data);
		
		out.print(data);
		
	}

}
