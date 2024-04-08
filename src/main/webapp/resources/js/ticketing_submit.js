$(document).ready(function(){
  let cno_check = false;
  
});

function selectionCno(obj){
    let submitCno = document.getElementById("cno");
    if(obj.value == "" || obj.value == null || obj.value === undefined){
      cno_check = false;
    }else{
      cno_check = true;
    }
}

function seatSelBtn(){
  if(cno_check == true){
    document.frm.submit();
  }
}