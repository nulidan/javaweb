package thoth.bean;

public class UserBean {
    private String userPwd;       //密码
    private String userPhone;     //状态
    private String userName;  //姓名
    private String  userUser; //昵称
    private String userState;     //状态
	public UserBean() {
		super();
	}
	

	@Override
	public String toString() {
		return "UserBean [userName=" + userName + ", userPwd="+ userPhone + ", userPhone=" + userPwd + ", userUser=" + userUser
				 +", userState=" + userState + "]";
	}

	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getUserUser() {
		return userUser;
	}
	public void setUserUser(String userUser) {
		this.userUser = userUser;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
}