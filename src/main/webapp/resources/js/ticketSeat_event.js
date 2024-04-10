document.addEventListener("DOMContentLoaded", function() {
    let personNumbers = document.querySelectorAll('.personAdult li');

    personNumbers.forEach(function(personNumberItem) {
        personNumberItem.addEventListener('click', function() {
            // 모든 요소의 클래스와 스타일 초기화
            personNumbers.forEach(function(item) {
                item.classList.remove('selected');
                let aTag = item.querySelector('a');
                if (aTag) {
                    aTag.style.color = ''; // 초기화
                }
            });

            // 선택된 요소에 클래스 추가하고 스타일 변경
            personNumberItem.classList.add('selected');
            let aTag = personNumberItem.querySelector('a');
            if (aTag) {
                aTag.style.color = 'white'; // 변경
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
    let personNumbers = document.querySelectorAll('.personYouth li');

    personNumbers.forEach(function(personNumberItem) {
        personNumberItem.addEventListener('click', function() {
            // 모든 요소의 클래스와 스타일 초기화
            personNumbers.forEach(function(item) {
                item.classList.remove('selected');
                let aTag = item.querySelector('a');
                if (aTag) {
                    aTag.style.color = ''; // 초기화
                }
            });

            // 선택된 요소에 클래스 추가하고 스타일 변경
            personNumberItem.classList.add('selected');
            let aTag = personNumberItem.querySelector('a');
            if (aTag) {
                aTag.style.color = 'white'; // 변경
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
    let personNumbers = document.querySelectorAll('.personSenior li');

    personNumbers.forEach(function(personNumberItem) {
        personNumberItem.addEventListener('click', function() {
            // 모든 요소의 클래스와 스타일 초기화
            personNumbers.forEach(function(item) {
                item.classList.remove('selected');
                let aTag = item.querySelector('a');
                if (aTag) {
                    aTag.style.color = ''; // 초기화
                }
            });

            // 선택된 요소에 클래스 추가하고 스타일 변경
            personNumberItem.classList.add('selected');
            let aTag = personNumberItem.querySelector('a');
            if (aTag) {
                aTag.style.color = 'white'; // 변경
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
    let personNumbers = document.querySelectorAll('.personSpecial li');

    personNumbers.forEach(function(personNumberItem) {
        personNumberItem.addEventListener('click', function() {
            // 모든 요소의 클래스와 스타일 초기화
            personNumbers.forEach(function(item) {
                item.classList.remove('selected');
                let aTag = item.querySelector('a');
                if (aTag) {
                    aTag.style.color = ''; // 초기화
                }
            });

            // 선택된 요소에 클래스 추가하고 스타일 변경
            personNumberItem.classList.add('selected');
            let aTag = personNumberItem.querySelector('a');
            if (aTag) {
                aTag.style.color = 'white'; // 변경
            }
        });
    });
});

let selectedCounts = {
    'personAdult': 0,
    'personYouth': 0,
    'personSenior': 0,
    'personSpecial': 0
};

function updateSelectedCounts() {
    let total = 0;
    for (let key in selectedCounts) {
        total += selectedCounts[key];
    }
    return total;
}

function handleClick(event, type) {
    let selectedCount = parseInt(event.currentTarget.getAttribute('data-count'));
    
    // 총 선택된 값과 현재 선택된 값의 합을 계산합니다.
    let total = updateSelectedCounts() + selectedCount;
    
    // 합이 8을 초과하는 경우 클릭을 막습니다.
    if (total > 8) {
        event.preventDefault();
        alert("인원은 최대 8명까지 선택 가능합니다.");
        return false;
    }
    
    // 선택된 요소에 클래스 추가하고 스타일 변경
    let personNumberItem = event.currentTarget;
    personNumberItem.classList.add('selected');
    let aTag = personNumberItem.querySelector('a');
    if (aTag) {
        aTag.style.color = 'white'; // 변경
    }
    
    // 선택된 값들을 갱신합니다.
    selectedCounts[type] = selectedCount;
}

document.addEventListener("DOMContentLoaded", function() {
    let personLists = document.querySelectorAll('.pn-container ul');

    personLists.forEach(function(personList) {
        let type = personList.getAttribute('class').split(' ')[0];
        let personNumbers = personList.querySelectorAll('li');
            
        personNumbers.forEach(function(personNumberItem) {
            personNumberItem.addEventListener('click', function(event) {


                // 모든 요소의 클래스와 스타일 초기화
                personNumbers.forEach(function(item) {
                    item.classList.remove('selected');
                    let aTag = item.querySelector('a');
                    if (aTag) {
                        aTag.style.color = ''; // 초기화
                    }
                });
                // 클릭 처리 함수 호출
                handleClick(event, type);

                console.log("선택한 인원 총 수::"+updateSelectedCounts());
                console.log("선택한 일반의 인원::"+selectedCounts.personAdult);
                console.log("선택한 청소년의 인원::"+selectedCounts.personYouth);
                console.log("선택한 경로의 인원::"+selectedCounts.personSenior);
                console.log("선택한 우대의 인원::"+selectedCounts.personSpecial);

                

                
            });
        });
    });

    // 초과된 선택을 비활성화하는 함수
    function disableExceedingSelection() {
        let personNumbers = document.querySelectorAll('.pn-container li');
        personNumbers.forEach(function(personNumberItem) {
            let selectedCount = parseInt(personNumberItem.getAttribute('data-count'));
            if (selectedCount + updateSelectedCounts() > 8) {
                personNumberItem.classList.add('disabled');
            } else {
                personNumberItem.classList.remove('disabled');
            }
        });
    }

    // 페이지 로드시 초과된 선택을 비활성화합니다.
    disableExceedingSelection();

    // 클릭할 때마다 초과된 선택을 비활성화합니다.
    document.querySelectorAll('.pn-container li').forEach(function(item) {
        item.addEventListener('click', function() {
            disableExceedingSelection();
        });
    });
});

document.addEventListener("DOMContentLoaded", function(){
    
    let seats = document.querySelectorAll(".seat");

    seats.forEach(function(seat){
        seat.addEventListener('click', function(){
            let seatNo = seat.querySelector('.no').innerText;
            
            let seatCol = seat.querySelector('.no').parentElement;
            console.log(seatNo);
            console.log(seatCol);


        });
    });
});

