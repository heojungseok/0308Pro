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
//		System.out.println(this.getClass().getResource("").getPath());
		String uuId = request.getParameter("uuId");
		System.out.println("chkid : "+uuId);
		int chk = service.chkTest(uuId);
		System.out.println(chk);
		if(chk == 1) {
			String msg = "사용할 수 없습니다.";
			request.setAttribute("msg", msg);
			request.setAttribute("uuId", "wjd????");
			RequestDispatcher dispatcher = request.getRequestDispatcher("view/chk_form/idchkform.jsp");
			dispatcher.forward(request, response);
		}
		
	}
}
