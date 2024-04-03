
function deleteConfirm(){
	if(confirm("삭제하시겠습니까?")){
		document.forms['inquiryDelete'].submit();
	}
}


function replyWriteFn() {
	document.getElementById('replyContentInput2').value = document.getElementById('replyContentInput').value;
	document.forms['replyAdd'].submit();
}
									