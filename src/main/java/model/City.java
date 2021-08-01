package model;

public class City {

	private String cityId;
	private String cityName;

	public City() {

	}

	public City(String cityId, String cityName) {
		super();
		this.cityId = cityId;
		this.cityName = cityName;
	}

	public String getCityId() {
		return cityId;
	}

	public void setCityId(String cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

}
