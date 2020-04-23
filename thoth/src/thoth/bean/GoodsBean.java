package thoth.bean;

public class GoodsBean {
private int goodsId;       //商品id
private String goodsName;  //商品名称
private String goodsSex; //商品价格
private String goodsPlace;//商品简介
private String goodsCharacater;  //商品状态



public GoodsBean() {
	super();
}


@Override
public String toString() {
	return "GoodsBean [goodsId=" + goodsId + ", goodsName=" + goodsName + ", goodsSex=" + goodsSex
			+ ", goodsPlace=" + goodsPlace + ", goodsCharacter=" + goodsCharacater  + "]";
}

public int getGoodsId() {
	return goodsId;
}
public void setGoodsId(int goodsId) {
	this.goodsId = goodsId;
}
public String getGoodsName() {
	return goodsName;
}
public void setGoodsName(String goodsName) {
	this.goodsName = goodsName;
}
public String getGoodsSex() {
	return goodsSex;
}
public void setGoodsSex(String goodsSex) {
	this.goodsSex = goodsSex;
}
public String getGoodsPlace() {
	return goodsPlace;
}
public void setGoodsPlace(String goodsPlace) {
	this.goodsPlace = goodsPlace;
}
public String getGoodsCharacater() {
	return goodsCharacater;
}
public void setGoodsCharacater(String goodsCharacater) {
	this.goodsCharacater = goodsCharacater;
}


}
