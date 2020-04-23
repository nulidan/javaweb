package thoth.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thoth.service.serviceImp.GoodsServicelmp;
import thoth.service.serviceImp.UserServicelmp;

import thoth.bean.GoodsBean;
import thoth.bean.UserBean;
import thoth.service.GoodsService;
import thoth.service.UserService;

public class index1CheckServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 获取账号、密码
		String admin = req.getParameter("phone");
		String pass = req.getParameter("password");
		System.out.println(admin+"==="+pass);
		// 调用接口通过账号、密码查询用户信息
		UserService userService = new UserServicelmp();
		UserBean user = userService.login(admin, pass);
		// 判断user是否为空
		if (user == null) {
			// user为空则跳到注册界面
			req.getRequestDispatcher("index2.jsp").forward(req, resp);
		} else {
			// 查询商品列表
			GoodsService goodsService = new GoodsServicelmp();
			List<GoodsBean> list = goodsService.selectGoods();
			// 存入session（前端可通过el表达式获取值）（有效期半个小时）
			HttpSession session = req.getSession();
			session.setAttribute("list", list);
			session.setAttribute("user", user);
			// 跳转到首页
			req.getRequestDispatcher("sy.jsp").forward(req, resp);
		}
	}
}