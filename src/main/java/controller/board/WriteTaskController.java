package controller.board;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import data.User;
import repository.PostDAO;

//글쓰기 작업을 마무리해주는 컨트롤러
@WebServlet("/write-task")
public class WriteTaskController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");

		HttpSession session = req.getSession();
		User logonUser = (User) session.getAttribute("logonUser");
		Boolean logon = (Boolean) session.getAttribute("logon");

		if (logonUser == null || !logon) {
			resp.sendRedirect("/board");
			return;
		}

		// 업로드된 이미지를
		String salt = String.valueOf(System.currentTimeMillis());
		String path = req.getServletContext().getRealPath("/upload")+ File.pathSeparator + salt;

		System.out.println("path = > " + path);

		int fileSize = 1024 * 1024 * 10; // 10MB까지

		// path에 확인한 경로로 해당 경로가 생성되어 있지 않으면 디렉토리를 생성
		File saveDir = new File(path);
		if (!saveDir.exists()) {
			saveDir.mkdirs();
		}

		try {

			MultipartRequest multi = new MultipartRequest(req, path, fileSize, "UTF-8", new DefaultFileRenamePolicy());	// 자동 업로드가 끝남..  copy 노 필요

						
			String title = multi.getParameter("title");
			if (title == null || title.matches("")) {
				resp.sendRedirect("/write?cause=valid");
				return;
			}

			String writerName = logonUser.getName();
			String writerId = logonUser.getId();
			String postBody = multi.getParameter("postBody");
			String img = multi.getFile("file") == null ? null : "/upload/"+salt+"/"+multi.getOriginalFileName("file");

			
			int r = PostDAO.createReview(writerName, img, title, postBody, writerId);

			if (r == 1) {
				req.setAttribute("writesuccess", true);
			}

			resp.sendRedirect("/board");

		} catch (

		Exception e) {
			e.printStackTrace();
		}

	}
}