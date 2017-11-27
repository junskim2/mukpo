package store.domain;

public class MenuVO {
	int mId;
	String rCid;
	String mCate;
	String mName;
	String mUrl;
	int mPrice;
	String mYn;
	
	public MenuVO() {}
	public MenuVO(int mId, String rCid, String mCate, String mName, String mUrl, int mPrice, String mYn) {
		super();
		this.mId = mId;
		this.rCid = rCid;
		this.mCate = mCate;
		this.mName = mName;
		this.mUrl = mUrl;
		this.mPrice = mPrice;
		this.mYn = mYn;
	}
	public int getmId() {
		return mId;
	}
	public void setmId(int mId) {
		this.mId = mId;
	}
	public String getrCid() {
		return rCid;
	}
	public void setrCid(String rCid) {
		this.rCid = rCid;
	}
	public String getmCate() {
		return mCate;
	}
	public void setmCate(String mCate) {
		this.mCate = mCate;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmUrl() {
		return mUrl;
	}
	public void setmUrl(String mUrl) {
		this.mUrl = mUrl;
	}
	public int getmPrice() {
		return mPrice;
	}
	public void setmPrice(int mPrice) {
		this.mPrice = mPrice;
	}
	public String getmYn() {
		return mYn;
	}
	public void setmYn(String mYn) {
		this.mYn = mYn;
	}
	
}
