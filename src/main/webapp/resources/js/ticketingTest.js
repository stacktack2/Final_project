// 전역 변수 선언
let selectedMovie = null;
let selectedTheater = null;
let selectedDate = null;
let selectedTime = null;

document.addEventListener("DOMContentLoaded", function() {
    let movieListItems = document.querySelectorAll('.movie-list-ul li');

    movieListItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // 선택된 영화 업데이트
            selectedMovie = item;
            updateNextButtonState();
            // 이전에 선택된 요소들과 클래스 제거/추가 작업 수행
            let previousSelectedItem = document.querySelector('.selected-movie');
            let textSpan = item.querySelector('.text');
            console.log(textSpan);
           
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-movie');
                let textWhiteSpan = previousSelectedItem.querySelector('.white');
                
                if(textWhiteSpan){
                	textWhiteSpan.classList.remove('white');
            	}
            }
            
            textSpan.classList.add('white');
            item.classList.add('selected-movie');
            console.log(selectedMovie);
        });
    });

    let theaterListItems = document.querySelectorAll('.theater-list-ul li');

    theaterListItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // 선택된 극장 업데이트
            selectedTheater = item;
            updateNextButtonState();
            // 이전에 선택된 요소들과 클래스 제거/추가 작업 수행
            // ...
        });
    });

    let dateListItems = document.querySelectorAll('.date-list-ul li');

    dateListItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // 선택된 날짜 업데이트
            selectedDate = item;
            updateNextButtonState();
            // 이전에 선택된 요소들과 클래스 제거/추가 작업 수행
            // ...
        });
    });

    let timeListItems = document.querySelectorAll('.time');

    timeListItems.forEach(function(item) {
        item.addEventListener('click', function() {
            // 선택된 시간 업데이트
            selectedTime = item;
            updateNextButtonState();
            // 이전에 선택된 요소들과 클래스 제거/추가 작업 수행
            // ...
        });
    });

    // 다음 페이지로 넘어가는 함수
    function goToNextPage() {
        // 여기서 다음 페이지로 이동하는 로직을 작성
        console.log("Go to next page");
    }

    // 모든 요소가 선택되었는지 확인하고 다음 페이지로의 이동 가능 상태를 업데이트하는 함수
    function updateNextButtonState() {
        if (selectedMovie && selectedTheater && selectedDate && selectedTime) {
            // 모든 요소가 선택되었으므로 다음 페이지로 이동 가능
            goToNextPage();
        } else {
            // 선택되지 않은 요소가 있는 경우 다음 페이지로의 이동 불가
            console.log("Not all items are selected yet");
        }
    }
});
