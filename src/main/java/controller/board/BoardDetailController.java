package controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Review;
import repository.PostDAO;

//후기 자세히 보기 처리 컨트롤러
@WebServlet("/boardDetail")
public class BoardDetailController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");

		String postId = req.getParameter("number");

		Review review = PostDAO.findByPost(postId);
		
		req.setAttribute("post", review);

		req.getRequestDispatcher("/WEB-INF/views/boardDetail.jsp").forward(req, resp);
	}
}
