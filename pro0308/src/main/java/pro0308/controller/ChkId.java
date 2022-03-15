package pro0308.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pro0308.service.MemberService;

@WebServlet("/chkid")
public class ChkId extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String uuId = request.getParameter("uuId");
		
		
		MemberService s = new MemberService();
		
	}
}
