package t1215;

public class TestVO {
	private String mid;
	private String pwd;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "TestVO [mid=" + mid + ", pwd=" + pwd + "]";
	}
	
}
