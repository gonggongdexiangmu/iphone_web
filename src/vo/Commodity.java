package vo;
/**
 * 
 *��Ʒ��
 *
 */
public class Commodity {
	//��Ʒ����
	private String commodityName;
	//��Ʒuuid
	private String uuid;
	//��ƷͼƬ·��
	private String picturePath;
	//��Ʒ����
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
