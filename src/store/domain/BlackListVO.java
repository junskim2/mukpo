package store.domain;

public class BlackListVO {
	String blId;
	String mId;
	String rCid;
	int blCnt;
	String blMemo;
	String blYn;
	
	public BlackListVO() {}
	public BlackListVO(String blId, String mId, String rCid, int blCnt, String blMemo, String blYn) {
		super();
		this.blId = blId;
		this.mId = mId;
		this.rCid = rCid;
		this.blCnt = blCnt;
		this.blMemo = blMemo;
		this.blYn = blYn;
	}
	public String getBlId() {
		return blId;
	}
	public void setBlId(String blId) {
		this.blId = blId;
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
	public int getBlCnt() {
		return blCnt;
	}
	public void setBlCnt(int blCnt) {
		this.blCnt = blCnt;
	}
	public String getBlMemo() {
		return blMemo;
	}
	public void setBlMemo(String blMemo) {
		this.blMemo = blMemo;
	}
	public String getBlYn() {
		return blYn;
	}
	public void setBlYn(String blYn) {
		this.blYn = blYn;
	}
	
}
