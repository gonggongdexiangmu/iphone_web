package vo;

import java.io.Serializable;
import java.util.List;

public class Goods implements Serializable{
	
	String goods_id;//��Ʒid
	String goods_name;//��Ʒ����
	String create_time;//�����¼�
	String label_id;//��ǩid
	String zan;//���޴���
	String goods_text;//�����ı�
	boolean goods_ishead;//�Ƿ����ͷ��
	String goods_state;//״̬����
	String pohto_url;//ͼƬ·��
	String video_url;//��Ƶ·��
	
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String create_time) {
		this.create_time = create_time;
	}
	public String getLabel_id() {
		return label_id;
	}
	public void setLabel_id(String label_id) {
		this.label_id = label_id;
	}
	public String getZan() {
		return zan;
	}
	public void setZan(String zan) {
		this.zan = zan;
	}
	public String getGoods_text() {
		return goods_text;
	}
	public void setGoods_text(String goods_text) {
		this.goods_text = goods_text;
	}
	
	public boolean isGoods_ishead() {
		return goods_ishead;
	}
	public void setGoods_ishead(boolean goods_ishead) {
		this.goods_ishead = goods_ishead;
	}
	public String getGoods_state() {
		return goods_state;
	}
	public void setGoods_state(String goods_state) {
		this.goods_state = goods_state;
	}
	public String getPohto_url() {
		return pohto_url;
	}
	public void setPohto_url(String string) {
		this.pohto_url = string;
	}
	public String getVideo_url() {
		return video_url;
	}
	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}
	
	
	
}
