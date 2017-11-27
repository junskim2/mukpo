package store.domain;

public class TableSetVO {

	String rCid;
	int tCnt;
	int tMax;
	
	public TableSetVO() {}
	public TableSetVO(String rCid, int tCnt, int tMax) {
		super();
		this.rCid = rCid;
		this.tCnt = tCnt;
		this.tMax = tMax;
	}
	public String getrCid() {
		return rCid;
	}
	public void setrCid(String rCid) {
		this.rCid = rCid;
	}
	public int gettCnt() {
		return tCnt;
	}
	public void settCnt(int tCnt) {
		this.tCnt = tCnt;
	}
	public int gettMax() {
		return tMax;
	}
	public void settMax(int tMax) {
		this.tMax = tMax;
	}
	
	
}
