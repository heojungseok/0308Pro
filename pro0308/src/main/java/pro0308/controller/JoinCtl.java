package pro0308.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pro0308.service.MemberService;

@WebServlet("/joinCtl")
public class JoinCtl extends HttpServlet {
	MemberService service;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("uuId") != null && request.getParameter("uuName") != null
				&& request.getParameter("uuPw") != null) {
			String uuId = request.getParameter("uuId");
			String uuName = request.getParameter("uuName");
			String uuPw = request.getParameter("uuPw");

			System.out.println("test ::: " + uuId + " , " + uuName + " , " + uuPw);
			
			response.sendRedirect("view/index.jsp");
			
		}
	}
}
