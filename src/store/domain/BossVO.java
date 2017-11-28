package store.domain;

public class BossVO {
	String bId;
	String bPw;
	String bBorn;
	String bName;
	String bEmail;
	String bZipcode;
	String bAddress;

	public BossVO() {
	}

	public BossVO(String bId, String bPw, String bBorn, String bName, String bEmail, String bZipcode, String bAddress) {
		super();
		this.bId = bId;
		this.bPw = bPw;
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

	public String getbPw() {
		return bPw;
	}

	public void setbPw(String bPw) {
		this.bPw = bPw;
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
