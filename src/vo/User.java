package vo;

import java.io.Serializable;

/**
 * 
 * ”√ªß
 *
 */
public class User implements Serializable{
	private String userip_id;
	private String userip_name;
	private String userip_realname;
	private String userip_pwd;
	private String userip_right;
	private String collections_id;
	
	public String getUserip_id() {
		return userip_id;
	}
	public void setUserip_id(String userip_id) {
		this.userip_id = userip_id;
	}
	public String getUserip_name() {
		return userip_name;
	}
	public void setUserip_name(String userip_name) {
		this.userip_name = userip_name;
	}
	public String getUserip_realname() {
		return userip_realname;
	}
	public void setUserip_realname(String userip_realname) {
		this.userip_realname = userip_realname;
	}
	public String getUserip_pwd() {
		return userip_pwd;
	}
	public void setUserip_pwd(String userip_pwd) {
		this.userip_pwd = userip_pwd;
	}
	public String getUserip_right() {
		return userip_right;
	}
	public void setUserip_right(String userip_right) {
		this.userip_right = userip_right;
	}
	public String getCollections_id() {
		return collections_id;
	}
	public void setCollections_id(String collections_id) {
		this.collections_id = collections_id;
	}
	
	
}
