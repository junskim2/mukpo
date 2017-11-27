package user.domain;

public class ReviewVO {
	String rvContent;
	String rvDate;
	
	public ReviewVO() {}
	
	public ReviewVO(String rvContent, String rvDate) {
		super();
		this.rvContent = rvContent;
		this.rvDate = rvDate;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public String getRvDate() {
		return rvDate;
	}
	public void setRvDate(String rvDate) {
		this.rvDate = rvDate;
	}
}
