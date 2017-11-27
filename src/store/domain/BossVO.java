package store.domain;

public class BossVO {
String bId;
String bPW;
String bBorn;
String bName;
String bEmail;
String bZipcode;
String bAddress;

public BossVO() {}
public BossVO(String bId, String bPW, String bBorn, String bName, String bEmail, String bZipcode, String bAddress) {
	super();
	this.bId = bId;
	this.bPW = bPW;
	this.bBorn = bBorn;
	this.bName = bName;
	this.bEmail = bEmail;
	this.bZipcode = bZipcode;
	this.bAddress = bAddress;
}
public String getbId() {
	return bId;
}
public void setbId(String bId) {
	this.bId = bId;
}
public String getbPW() {
	return bPW;
}
public void setbPW(String bPW) {
	this.bPW = bPW;
}
public String getbBorn() {
	return bBorn;
}
public void setbBorn(String bBorn) {
	this.bBorn = bBorn;
}
public String getbName() {
	return bName;
}
public void setbName(String bName) {
	this.bName = bName;
}
public String getbEmail() {
	return bEmail;
}
public void setbEmail(String bEmail) {
	this.bEmail = bEmail;
}
public String getbZipcode() {
	return bZipcode;
}
public void setbZipcode(String bZipcode) {
	this.bZipcode = bZipcode;
}
public String getbAddress() {
	return bAddress;
}
public void setbAddress(String bAddress) {
	this.bAddress = bAddress;
}

}
