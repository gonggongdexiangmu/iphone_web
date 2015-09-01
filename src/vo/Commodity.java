package vo;
/**
 * 
 *商品类
 *
 */
public class Commodity {
	//商品名字
	private String commodityName;
	//商品uuid
	private String uuid;
	//商品图片路径
	private String picturePath;
	//商品介绍
	private String introduction;
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
	public String toString(){
		return uuid+","+commodityName+","+introduction+","+picturePath;
	}
}
