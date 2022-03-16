package pro0308.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pro0308.service.MemberService;

@WebServlet("/chkid")
public class ChkId extends HttpServlet {
	MemberService service = new MemberService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("uuId") != null) {
			String uuId = request.getParameter("uuId");
			boolean chk = service.chkTest(uuId);
			String msg = "";

			if (chk == true)
				msg = "이미 사용 중 입니다.";
			else
				msg = "사용 가능 합니다.";

			request.setAttribute("msg", msg);

			RequestDispatcher dispatcher = request.getRequestDispatcher("view/chk_form/idchkform.jsp");
			dispatcher.forward(request, response);
		}
	}
}
