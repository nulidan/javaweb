package thoth.service.serviceImp;

import java.util.List;

import thoth.dao.daoImp.GoodsDaolmp;

import thoth.bean.GoodsBean;
import thoth.dao.GoodsDao;

import thoth.service.GoodsService;

public class GoodsServicelmp implements GoodsService {

	public List<GoodsBean> selectGoods() {
		GoodsDao goods =new GoodsDaolmp();
		return goods.selectGoods();
	}
	
	public Integer deleteGoods(int goodId) {
		GoodsDao goods =new GoodsDaolmp();
		return goods.deleteGoods(goodId);
	}

}
