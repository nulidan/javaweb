package thoth.dao;

import java.util.List;

import thoth.bean.GoodsBean;

public interface GoodsDao {
	public  List<GoodsBean> selectGoods();
	public int deleteGoods(int goods_id);
}
