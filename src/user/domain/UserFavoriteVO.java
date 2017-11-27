package user.domain;

public class UserFavoriteVO {
	String fId;
	String mId;
	String rCid;
	
	public UserFavoriteVO() {}
	
	public UserFavoriteVO(String fId, String mId, String rCid) {
		super();
		this.fId = fId;
		this.mId = mId;
		this.rCid = rCid;
	}
	public String getfId() {
		return fId;
	}
	public void setfId(String fId) {
		this.fId = fId;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getrCid() {
		return rCid;
	}
	public void setrCid(String rCid) {
		this.rCid = rCid;
	}
}
