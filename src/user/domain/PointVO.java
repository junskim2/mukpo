package user.domain;

public class PointVO {
	
	int pId;
	String mId;
	String pDate;
	String pAs;
	String pStore;
	int pPrice;
	int pCruntmoney;
	
	public PointVO() {}
	
	public PointVO(int pId, String mId, String pDate, String pAs, String pStore, int pPrice, int pCruntmoney) {
		super();
		this.pId = pId;
		this.mId = mId;
		this.pDate = pDate;
		this.pAs = pAs;
		this.pStore = pStore;
		this.pPrice = pPrice;
		this.pCruntmoney = pCruntmoney;
	}
	public int getpId() {
		return pId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	public String getpAs() {
		return pAs;
	}
	public void setpAs(String pAs) {
		this.pAs = pAs;
	}
	public String getpStore() {
		return pStore;
	}
	public void setpStore(String pStore) {
		this.pStore = pStore;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpCruntmoney() {
		return pCruntmoney;
	}
	public void setpCruntmoney(int pCruntmoney) {
		this.pCruntmoney = pCruntmoney;
	}

}
