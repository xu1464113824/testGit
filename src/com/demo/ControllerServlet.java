package com.demo;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DogDao;
import com.dao.DogDaoImpl;
import com.dao.EstimateDao;
import com.dao.EstimateDaoImpl;
import com.model.Dog;
import com.model.DogsItem;
import com.model.Estimate;
import com.model.ShoppingCart;

@WebServlet(name = "ShoppingCartServlet", urlPatterns = { "/addcar", "/deleteItem", "/success","/estimate","/del" })
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.endsWith("deleteItem")) {
			deleteItem(request, response);
		} else if (uri.endsWith("addcar")) {
			addCar(request, response);
		} else if (uri.endsWith("success")) {
			success(request, response);
		}else if(uri.endsWith("estimate")) {
			estimate(request,response);
		}else if(uri.endsWith("del")) {
			del(request,response);
		}
	}

	private void del(HttpServletRequest request, HttpServletResponse response) throws IOException {
		DogDao dao = new DogDaoImpl();
		try {
			dao.delDogById(request.getParameter("id"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("display.jsp");
		
	}

	private void estimate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EstimateDao dao=new EstimateDaoImpl();
		String user = request.getParameter("user");
		String content = request.getParameter("content");
		List<Estimate> statements=null;
		try {
			if(user!=null&&user!=""&&content!=null&&content!="") {
				dao.addStatement(user,content);
			}
			statements = dao.getAllStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("statements", statements);
		request.getRequestDispatcher("/ShowAssess.jsp").forward(request, response);
	}

	public void success(HttpServletRequest request, HttpServletResponse response) throws IOException {
		DogDao dao = new DogDaoImpl();
		HttpSession session = request.getSession();
		ArrayList<DogsItem> items = (ArrayList<DogsItem>) session.getAttribute("items");
		if (items != null && !items.isEmpty()) {
			for (DogsItem dogItem : items) {
				try {
					dao.delDogNumById(dogItem.getDog().getId(), dogItem.getQuantity());
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			session.removeAttribute("items");
			session.removeAttribute("car");
			session.invalidate();
			response.sendRedirect("successed.jsp");
		}

	}

	// 通过id向购物车放入一个dog实体
	public void addCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 将一件商品放入购物车
		int quantity = 1;
		// requset.getParameter("num")

		Dog dog = getDog(request.getParameter("id"));
		if (dog != null && quantity > 0) {
			DogsItem dogItem = new DogsItem(dog, quantity);
			HttpSession session = request.getSession();
			ShoppingCart cart = (ShoppingCart) session.getAttribute("car");
			if (cart == null) {
				cart = new ShoppingCart();
				session.setAttribute("car", cart);
			}
			cart.add(dogItem);
		}
		// 显示购物车信息
		response.sendRedirect("ShopCar.jsp");
	}

	// 从购物车中删除一件商品
	private void deleteItem(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		ShoppingCart cart = (ShoppingCart) session.getAttribute("car");
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			DogsItem item = null;
			for (DogsItem shopItem : cart.getItems()) {
				if (shopItem.getDog().getId() == id) {
					item = shopItem;
					break;
				}
			}
			cart.remove(item.getDog().getId());
		} catch (NumberFormatException e) {
			System.out.println("发生异常：" + e.getMessage());
		}
		session.setAttribute("car", cart);
		response.sendRedirect("ShopCar.jsp");
	}

	// 根据给定的商品号返回商品对象
	private Dog getDog(String id) { // sql语句根据id返回实体DOG对象
		DogDao dao = new DogDaoImpl();
		Dog dog = null;
		try {
			dog = dao.findDogById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dog;
	}

}
