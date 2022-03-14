package pro0308.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pro0308.service.MemberService;

@WebServlet("/joinCtl")
public class JoinCtl extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uuId = request.getParameter("uuId");
		String uuName = request.getParameter("uuName");
		String uuPw = request.getParameter("uuPw");
		
		MemberService s = new MemberService();
		s.test(uuId);
		
	}
}
