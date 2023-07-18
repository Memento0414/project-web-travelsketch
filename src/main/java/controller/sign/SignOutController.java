package controller.sign;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/signOut")
public class SignOutController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 로그아웃 기능
		HttpSession session = req.getSession();
		req.setCharacterEncoding("utf-8");
		Boolean logon = (Boolean) session.getAttribute("logon");

		if (!logon) {
			resp.sendRedirect("/index");
			return;
		} else {

			session.invalidate();
			resp.sendRedirect("/index");
			return;
		}
	}
}
