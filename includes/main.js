$(document).ready(initializeApp);

function initializeApp(){
	readData();
}

function attachHandlers(){

}

function readData(){
	var ajaxOptions = {
		url: 'server/list.php',
		dataType: 'json',
		success: dataReceivedFromServer
	}
	$.ajax( ajaxOptions );
}

function dataReceivedFromServer( responseData ){
	console.log(responseData);
	if(responseData.success){
		//we got the OK from the server
		renderItemsOnPage( responseData.data );
	} else {
		// data rejected
	}
}
/*
	<div class="todoRow">
		<div class="title"><a href="#">Get eggs</a></div>
		<div class="descriptionSnippet">Go to the store and ...</div>
		<div class="due">2018-03-18 8:00pm</div>
	</div>
*/

function renderItemsOnPage( allItems ){
	var allRows = [];
	for(var todoI = 0; todoI < allItems.length; todoI++){
		allRows.push(renderOneItemOnPage( allItems[todoI]));
	}
	$("#listItems").append(allRows);
}
function renderOneItemOnPage( todoItem ){
	var row = $("<div>",{
		'class': 'todoRow'
	});
	var title = $("<div>",{
		'class': 'title',
		text: todoItem.title
	});
	var description = $("<div>",{
		'class': 'descriptionSnippet',
		text: todoItem.description
	});
	var dueDate = $("<div>", {
		'class': 'due',
		text: todoItem.dueDate
	});
	row.append(title, description, dueDate);
	return row;
}









