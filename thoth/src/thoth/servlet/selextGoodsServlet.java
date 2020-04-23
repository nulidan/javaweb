package thoth.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import thoth.bean.GoodsBean;
import thoth.message.Response;
import thoth.service.GoodsService;
import thoth.service.serviceImp.GoodsServicelmp;

public class selextGoodsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//调用接口查询商品信息
		GoodsService goodsService = new GoodsServicelmp();
		List<GoodsBean> list = goodsService.selectGoods();
		//返回信息封装
		Response res = new Response(1, "查询成功", null);
		res.getMsg().put("list", list);
		ObjectMapper ob = new ObjectMapper();
		// 对象转字符串
		String json = ob.writeValueAsString(res);
		resp.getWriter().println(json);
		
	}
}
