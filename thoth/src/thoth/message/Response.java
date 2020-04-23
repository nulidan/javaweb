package thoth.message;

import java.util.HashMap;
import java.util.Map;

public class Response {
	private int id;
	private String mess;
	private String location;
	private Map<String, Object> msg = new HashMap<String, Object>();

	public Response() {
		// TODO Auto-generated constructor stub
	}

	public Response(int id, String mess, String location) {
		super();
		this.id = id;
		this.mess = mess;
		this.location = location;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMess() {
		return mess;
	}

	public void setMess(String mess) {
		this.mess = mess;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Map<String, Object> getMsg() {
		return msg;
	}

	public void setMsg(Map<String, Object> msg) {
		this.msg = msg;
	}

}
