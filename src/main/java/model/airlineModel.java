package model;

public class airlineModel {
	private String airlineCode;
	private String airlineName;
	
	public airlineModel(String airlineCode, String airlineName) {
		super();
		this.airlineCode = airlineCode;
		this.airlineName = airlineName;
	}
	public String getAirlineCode() {
		return airlineCode;
	}
	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}
	public String getAirlineName() {
		return airlineName;
	}
	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}
	

}
