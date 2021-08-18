let form = $("#infoForm");

$("#list_btn").on("click", function(e){
form.find("#bno").remove();
form.attr("action", "/list");
form.submit();
});

$("modify_btn").on("click", function(e){
form.attr("action","/modify");
});