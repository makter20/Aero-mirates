package model;

public class Airport {

	private String airportId;
	private String airportName;
	private String cityId;

	public Airport() {

	}

	public Airport(String airportId, String airportName, String cityId) {
		super();
		this.airportId = airportId;
		this.airportName = airportName;
		this.cityId = cityId;
	}

	public String getAirportId() {
		return airportId;
	}

	public void setAirportId(String airportId) {
		this.airportId = airportId;
	}

	public String getAirportName() {
		return airportName;
	}

	public void setAirportName(String airportName) {
		this.airportName = airportName;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

}
