function seatSelBtn(){
  let submitCno = document.getElementById("cno");
  let submitTno = document.getElementById("tno");
  let submitSday = document.getElementById("sday");
  let submitSstartTime = document.getElementById("sstartTime");
  let submitShallno = document.getElementById("shallno");
  let submitShallType = document.getElementById("shallType");
  let submtShallLocation = document.getElementById("shallLocation");

  if(submitCno.value != "" && submitCno.value != null && submitCno !== undefined &&
      submitTno.value != "" && submitTno.value != null && submitTno !== undefined &&
      submitSday.value != "" && submitSday.value != null && submitSday !== undefined &&
      submitSstartTime.value != "" && submitSstartTime.value != null && submitSstartTime !== undefined &&
      submitShallno.value != "" && submitShallno.value != null && submitShallno !== undefined &&
      submitShallType.value != "" && submitShallType.value != null && submitShallType !== undefined &&
      submtShallLocation.value != "" && submtShallLocation.value != null && submtShallLocation !== undefined){
    document.frm.submit();
  }else{
    alert("영화 정보를 다시 선택해주시기 바랍니다.");
  }
}

function ticketInfo(){
  let submitMno = document.getElementById("mno");
  let submitCno = document.getElementById("cno");
  let submitTno = document.getElementById("tno");
  let submitSday = document.getElementById("sday");
  let submitSstartTime = document.getElementById("sstartTime");
  let submitShallno = document.getElementById("shallno");
  let submitShallType = document.getElementById("shallType");
  let submtShallLocation = document.getElementById("shallLocation");
  let personNum = document.getElementById("personNum");
  let sseatNos = document.getElementById("sseatNos");
  let seats = document.getElementById("seats");

  if(submitMno.value != "" && submitMno.value != null && submitMno !== undefined &&
    submitCno.value != "" && submitCno.value != null && submitCno !== undefined &&
      submitTno.value != "" && submitTno.value != null && submitTno !== undefined &&
      submitSday.value != "" && submitSday.value != null && submitSday !== undefined &&
      submitSstartTime.value != "" && submitSstartTime.value != null && submitSstartTime !== undefined &&
      submitShallno.value != "" && submitShallno.value != null && submitShallno !== undefined &&
      submitShallType.value != "" && submitShallType.value != null && submitShallType !== undefined &&
      submtShallLocation.value != "" && submtShallLocation.value != null && submtShallLocation !== undefined &&
      personNum.value != "" && personNum.value != null && personNum !== undefined &&
      sseatNos.value != "" && sseatNos.value != null && sseatNos !== undefined &&
      seats.value != "" && seats.value != null && seats !== undefined){
    document.frm.submit();
  }else{
    alert("영화 정보를 다시 선택해주시기 바랍니다.");
  }
}