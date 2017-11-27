package reserve.domain;

public class ReserveFavoriteWeekVO {
	private String fwID;	// 주간예약ID

	public ReserveFavoriteWeekVO() {}
	
	public ReserveFavoriteWeekVO(String fwID) {
		super();
		this.fwID = fwID;
	}

	// Getter, Setter
	public String getFwID() {
		return fwID;
	}

	public void setFwID(String fwID) {
		this.fwID = fwID;
	}
	
	
}
