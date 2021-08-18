let moveForm = $("#moveForm");
$(".move").on("click", function(e){
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+ "'>");
	moveForm.attr("action", "/get");
	moveForm.submit();
});
$(".pageInfo a").on("click", function(e){
	e.preventDefault();
	moveForm.find("input[name='pageNum']").val($(this).attr("href"));
	moveForm.attr("action", "/list");
	moveForm.submit();
	
});	
