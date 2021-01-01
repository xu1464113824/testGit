package com.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		if (type != null) {
			String username = request.getParameter("username");
			String password = request.getParameter("userpassword");
			if (type.equals("user")) {
				String mail = request.getParameter("useremail");
				String address = request.getParameter("useraddress");
				String auto = request.getParameter("auto");
				System.out.println(username + "\t" + password + "\t" + mail + "\t" + address + "\t");
				if (username.equals("123") && password.equals("123") && mail.equals("1102065753@qq.com")
						&& address.equals("河北省")) {
					if (auto != null && auto.equals("true")) {
						Cookie ck_username = new Cookie("username", username);
						Cookie ck_password = new Cookie("password", password);
						Cookie ck_mail = new Cookie("mail", mail);
						Cookie ck_address = new Cookie("address", address);
						ck_username.setMaxAge(60);
						ck_password.setMaxAge(60);
						ck_address.setMaxAge(60);
						ck_address.setMaxAge(60);
						response.addCookie(ck_username);
						response.addCookie(ck_password);
						response.addCookie(ck_mail);
						response.addCookie(ck_address);
					}
					response.sendRedirect("shouye.jsp");
				} else {
					response.sendRedirect("login.jsp");
				}
			} else if (type.equals("admin")) {
				if (username.equals("456") && password.equals("456")) {
					response.sendRedirect("display.jsp");
				} else {
					response.sendRedirect("admin.jsp");
				}
			}
		}
		String parameter = request.getParameter("username");

	}
}
