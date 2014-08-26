if( $("#my-final-table").length > 0 ){	

	function drawTable(response){
		$('#my-final-table').append(response);
	}

	drawTable(window.response);

}