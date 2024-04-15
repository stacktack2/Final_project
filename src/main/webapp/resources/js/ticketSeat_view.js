let inputTicketNo = document.querySelectorAll("#ticketNo");
let inputTicketDeyln = document.querySelectorAll("#ticketDeyln");

inputTicketNo.forEach((element, index) => { // 수정: index를 명시적으로 선언
    let ticketNoValue = parseInt(element.value);
    let ticketDeyln = parseInt(inputTicketDeyln[index].value); // 수정: index를 사용하여 inputTicketDeyln에서 해당하는 값 가져오기

    let parentDiv = element.parentElement.parentElement; 
    let noSpan = parentDiv.querySelector(".no"); 
    let aTag = parentDiv.querySelector("a"); 

    if (ticketNoValue > 0 && ticketDeyln == 0) { 
        noSpan.innerText = "X"; 
        aTag.style.pointerEvents = "none"; 
        noSpan.style.backgroundColor = "black"; 
    }
});

document.addEventListener("DOMContentLoaded", function() {
    let resetButton = document.querySelector('.button-reset');
    
    resetButton.addEventListener('click', function() {
        location.reload();
    });
});
