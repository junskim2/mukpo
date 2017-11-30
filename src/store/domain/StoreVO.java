package store.domain;

public class StoreVO {

	String rCid;		//사업자등록번호
	String bId;			//사장 ID
	String sPw;			//매장PW
	String sUrl;		//로고URL
	String sName;		//업소명
	String sTel;		//전화번호
	String sZipcode;	//우편번호
	String sAddress;	//주소
	String sSido;		//시도
	String sSigungo;	//시구군
	String sMp;			//먹포구분(M,P,MP)
	String sCate;		//카테고리
	String sOpenTime;	//오픈시간
	String sCloseTime;	//마감시간
	String sClose;		//휴무일
	String sYn;			//휴폐업여부(Y,N)
	double sLatitude;	//위도
	double sLongitude;	//경도
	String sDetail;		//매장설명
	
	public StoreVO() {}
	
	public StoreVO(String rCid, String bId, String sPw, String sUrl, String sName, String sTel, String sZipcode,
			String sAddress, String sSido, String sSigungo, String sMp, String sCate, String sOpenTime,
			String sCloseTime, String sClose, String sYn, double sLatitude, double sLongitude, String sDetail) {
		super();
		this.rCid = rCid;
		this.bId = bId;
		this.sPw = sPw;
		this.sUrl = sUrl;
		this.sName = sName;
		this.sTel = sTel;
		this.sZipcode = sZipcode;
		this.sAddress = sAddress;
		this.sSido = sSido;
		this.sSigungo = sSigungo;
		this.sMp = sMp;
		this.sCate = sCate;
		this.sOpenTime = sOpenTime;
		this.sCloseTime = sCloseTime;
		this.sClose = sClose;
		this.sYn = sYn;
		this.sLatitude = sLatitude;
		this.sLongitude = sLongitude;
		this.sDetail = sDetail;
	}

	
	public String getrCid() {
		return rCid;
	}
	public void setrCid(String rCId) {
		this.rCid = rCId;
	}
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public String getsPw() {
		return sPw;
	}
	public void setsPw(String sPw) {
		this.sPw = sPw;
	}
	public String getsUrl() {
		return sUrl;
	}
	public void setsUrl(String sUrl) {
		this.sUrl = sUrl;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsTel() {
		return sTel;
	}
	public void setsTel(String sTel) {
		this.sTel = sTel;
	}
	public String getsZipcode() {
		return sZipcode;
	}
	public void setsZipcode(String sZipcode) {
		this.sZipcode = sZipcode;
	}
	public String getsAddress() {
		return sAddress;
	}
	public void setsAddress(String sAddress) {
		this.sAddress = sAddress;
	}
	public String getsSido() {
		return sSido;
	}
	public void setsSido(String sSido) {
		this.sSido = sSido;
	}
	public String getsSigungo() {
		return sSigungo;
	}
	public void setsSigungo(String sSigungo) {
		this.sSigungo = sSigungo;
	}
	public String getsMp() {
		return sMp;
	}
	public void setsMp(String sMp) {
		this.sMp = sMp;
	}
	public String getsCate() {
		return sCate;
	}
	public void setsCate(String sCate) {
		this.sCate = sCate;
	}
	public String getsOpenTime() {
		return sOpenTime;
	}
	public void setsOpenTime(String sOpenTime) {
		this.sOpenTime = sOpenTime;
	}
	public String getsCloseTime() {
		return sCloseTime;
	}
	public void setsCloseTime(String sCloseTime) {
		this.sCloseTime = sCloseTime;
	}
	public String getsClose() {
		return sClose;
	}
	public void setsClose(String sClose) {
		this.sClose = sClose;
	}
	public String getsYn() {
		return sYn;
	}
	public void setsYn(String sYn) {
		this.sYn = sYn;
	}
	public double getsLatitude() {
		return sLatitude;
	}
	public void setsLatitude(double sLatitude) {
		this.sLatitude = sLatitude;
	}
	public double getsLongitude() {
		return sLongitude;
	}
	public void setsLongitude(double sLongitude) {
		this.sLongitude = sLongitude;
	}

	public String getsDetail() {
		return sDetail;
	}

	public void setsDetail(String sDetail) {
		this.sDetail = sDetail;
	}
	
}
