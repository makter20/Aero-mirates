/**
 * 
 */

var rows = document.getElementsByClassName("flightRow");

rows.forEach(row => {
	row.addEventListener("click",item => {
		var flightId = document.getElementById("flightId");
		var flightName = document.getElementById("flightName");
		var airlineName = document.getElementById("airlineName");
		var td1 = item.path[1];
		flightId.value = td1.value;
	})
})
