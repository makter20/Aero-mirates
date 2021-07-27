package model;

public class queryModel {
	String departing_from;
	String going_to;
	String departing_date;
	String returning_date;
	
	public queryModel(String departing_from, String going_to,
					String departing_date, String returning_date) 
	{
		super();
		this.departing_from = departing_from;
		this.going_to = going_to;
		this.departing_date = departing_date;
		this.returning_date = returning_date;
	}

	public String getDeparting_from() {
		return departing_from;
	}

	public void setDeparting_from(String departing_from) {
		this.departing_from = departing_from;
	}

	public String getGoing_to() {
		return going_to;
	}

	public void setGoing_to(String going_to) {
		this.going_to = going_to;
	}

	public String getDeparting_date() {
		return departing_date;
	}

	public void setDeparting_date(String departing_date) {
		this.departing_date = departing_date;
	}

	public String getReturning_date() {
		return returning_date;
	}

	public void setReturning_date(String returning_date) {
		this.returning_date = returning_date;
	}

}