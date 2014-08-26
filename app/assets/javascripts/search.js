console.log('Started search.js');

jQuery('#search-submit-button').on('click', function(e){
	console.log('Clicked search box');
	e.preventDefault();
	checkSearch();
});

function checkSearch(){
	var search_term = jQuery('#search').value;
	doGuidestarQuery();
}

function doGuidestarQuery(){
	var org_id = '7831216';
	var userName = 'chansd5@gmail.com';
	var passWord = 'actionableapp';
	var queryUrl = 'https://sandboxdata.guidestar.org/v1/detail/'+org_id+'.json'
	var config = 
	{
	  type: "GET",
		url: queryUrl,
	  dataType: 'json',
	  async: false,
	  username: '407cb8db554847838eb99285d90bdb31',
	};
	jQuery.ajax( queryUrl )
	  .done(function(data) {
	    console.log( "success" );
	    console.log( data );
	  });
}