package thoth.dao.daoImp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import thoth.bean.GoodsBean;
import thoth.dao.GoodsDao;
import thoth.tools.Jdbc;

public class GoodsDaolmp implements GoodsDao {

	public List<GoodsBean> selectGoods() {
		//��ȡ����
				Connection conn =Jdbc.getJdbc().getConnection();
				String sql = "SELECT * FROM shangpingbiao WHERE goods_state=1";
				PreparedStatement ptt = null;
				ResultSet ret = null;		
				List<GoodsBean> list = new ArrayList();
				try {
					//获取执行SQL语句的PreparedStatement对象
					ptt = conn.prepareStatement(sql);
					//执行sql语句
					ret = ptt.executeQuery();
					System.out.println(ret);
					while(ret.next()) {
						GoodsBean goods = new GoodsBean();
						goods.setGoodsId(ret.getInt("spb_id"));
						goods.setGoodsName(ret.getString("spb_name"));
						goods.setGoodsSex(ret.getNString("spb_information"));
						goods.setGoodsPlace(ret.getString("spb_origin"));
					    goods.setGoodsCharacater(ret.getString("spb_sales"));
					    list.add(goods);   //添加元素
					    System.out.println(goods.toString()+"--------");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} finally {
					Jdbc.getJdbc().close(conn, ptt, ret);
				}

				return list;
	}
	// 删除商品
		public int deleteGoods(int goods_id) {
			// 获取连接
			Connection conn = Jdbc.getJdbc().getConnection();
			String sql = "DELETE FROM shangpingbiao WHERE spb_id=?";
			PreparedStatement ptt = null;
			int ret = 0;
			try {
				// 获取执行SQL语句的PreparedStatement对象
				ptt = conn.prepareStatement(sql);
				//传入参数
				ptt.setInt(1, goods_id);
				// 执行sql语句
				ret = ptt.executeUpdate();
				System.out.println(ret);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				Jdbc.getJdbc().close(conn, ptt, null);
			}

			return ret;
		}

	}