package com.filter;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dao.DogDao;
import com.dao.DogDaoImpl;

@WebFilter(urlPatterns = { "/hashiqi.jsp", "/jinmao.jsp", "/display.jsp", "/taidi.jsp", "/samoye.jsp", "/alasijia.jsp",
		"/keji.jsp" })
public class DogFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		DogDao dao = new DogDaoImpl();
		HttpSession session = req.getSession();
		String uri = req.getRequestURI();
		if (uri.endsWith("/display.jsp")) {
			try {
				session.setAttribute("alldogs", dao.getAllDogs());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("alasijia.jsp")) {
			try {
				session.setAttribute("alasijia", dao.getAllDogsByType("阿拉斯加"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("jinmao.jsp")) {
			try {
				session.setAttribute("jinmao", dao.getAllDogsByType("金毛"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("keji.jsp")) {
			try {
				session.setAttribute("keji", dao.getAllDogsByType("柯基"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("taidi.jsp")) {
			try {
				session.setAttribute("taidi", dao.getAllDogsByType("泰迪"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("samoye.jsp")) {
			try {
				session.setAttribute("samoye", dao.getAllDogsByType("萨摩耶"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else if (uri.endsWith("hashiqi.jsp")) {
			try {
				req.getServletContext().setAttribute("hashiqi", dao.getAllDogsByType("哈士奇"));
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		chain.doFilter(req, response);
	}

}
