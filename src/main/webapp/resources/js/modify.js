let form = $("#infoForm")
		let mform = $("#modifyForm")
			/*목록 페이지 이동 버튼*/
		$("#list_btn").on("click",function(e){
			form.find("#bno").remove();
			form.attr("action","/list");
			form.submit();
		});
	
		/*수정 하기 버튼*/
		$("#modify_btn").on("click",function(e){
			
			mform.submit();
		});
		/*취소 버튼*/
		$("#cancle_btn").on("click",function(e){
			form.attr("action","/get");
			form.submit();
		});
		/*삭제 버튼*/
		$("#delete_btn").on("click",function(e){
			
			form.attr("action","/delete");
			form.attr("method","post");
			form.submit();
		});