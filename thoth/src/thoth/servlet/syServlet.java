package thoth.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import thoth.bean.GoodsBean;
import thoth.bean.UserBean;
import thoth.service.GoodsService;
import thoth.service.UserService;
import thoth.service.serviceImp.GoodsServicelmp;
import thoth.service.serviceImp.UserServicelmp;

public class syServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		doPost(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		   //查询商品列表信息
			GoodsService goodsService = new GoodsServicelmp();
			List<GoodsBean> list =goodsService.selectGoods();
			//将商品信息存在session中
			HttpSession session = req.getSession();
			session.setAttribute("list", list);//都没有查询用户信息 自己查下哈
		
			
			//跳转到首页
			req.getRequestDispatcher("sy.jsp").forward(req, resp);
	
	//protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//String admin=req.getParameter("uname");
		//String pass=req.getParameter("psw");
		//System.out.println(admin+"-"+pass);
		//req.getRequestDispatcher("index1.html").forward(req, resp);
	}
	
}

