package thoth.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;

import thoth.bean.GoodsBean;
import thoth.message.Response;
import thoth.service.GoodsService;
import thoth.service.serviceImp.GoodsServicelmp;

public class deleteGoodsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取商品id
		String goods_id = req.getParameter("goodsId");
		//调用接口删除对应商品
		GoodsService goodsService = new GoodsServicelmp();
		int judge =goodsService.deleteGoods(Integer.valueOf(goods_id));
		//对结果进行判断成功为1 失败为0
		if(judge>0){
			//查询商品列表信息
			List<GoodsBean> list =goodsService.selectGoods();
			//返回信息封装
			Response res = new Response(1,"删除成功",null);
			res.getMsg().put("list", list);
			ObjectMapper ob = new ObjectMapper();
			//对象转字符串
			String json = ob.writeValueAsString(res);
			//返回信息
			resp.getWriter().println(json);
		}else{
			//返回信息封装
			Response res = new Response(0,"删除失败",null);
			ObjectMapper ob = new ObjectMapper();
			//对象转字符串
			String json = ob.writeValueAsString(res);
			//返回信息
			resp.getWriter().println(json);
		}
}
}

