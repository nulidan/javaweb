package thoth.service;

import java.util.List;

import thoth.bean.GoodsBean;

public interface GoodsService {
	public  List<GoodsBean> selectGoods();
	public  Integer deleteGoods(int goodId);
}
