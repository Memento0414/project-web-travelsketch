package controller.camp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.PostDAO;

@WebServlet("/camp/delete")
public class CampReviewDeleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int reviewNum = Integer.parseInt(req.getParameter("reviewNum"));
		String contentId = req.getParameter("contentId");

		PostDAO.deleteCampReview(reviewNum);

		resp.sendRedirect("/detail?review=1&contentId=" + contentId);

	}

}
