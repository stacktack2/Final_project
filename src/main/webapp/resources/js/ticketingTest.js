document.addEventListener("DOMContentLoaded", function() {
    // 영화, 극장, 날짜, 시간 요소 선택
    let movie = null;
    let theater = null;
    let date = null;
    let time = null;
    let seatSelectionButton = document.getElementById('seatSelectionButton');
    
    // 영화 클릭 이벤트 처리
    document.querySelectorAll('.movie-list-ul li').forEach(function(item) {
        item.addEventListener('click', function() {
            movie = item.getAttribute('title');
            checkAllSelections();
        });
    });

    // 극장 클릭 이벤트 처리
    document.querySelectorAll('.theater-list-ul li').forEach(function(item) {
        item.addEventListener('click', function() {
            theater = item.getAttribute('title');
            checkAllSelections();
        });
    });

    // 날짜 클릭 이벤트 처리
    document.querySelectorAll('.date-list-ul li').forEach(function(item) {
        item.addEventListener('click', function() {
            date = item.getAttribute('date');
            checkAllSelections();
        });
    });

    // 시간 클릭 이벤트 처리
    document.querySelectorAll('.time-list-ul li').forEach(function(item) {
        item.addEventListener('click', function() {
            time = item.getAttribute('time');
            checkAllSelections();
        });
    });

    // 모든 선택 항목 확인 및 좌석 선택 버튼 활성화
    function checkAllSelections() {
        if (movie && theater && date && time) {
            seatSelectionButton.removeAttribute('disabled');
        }
    }
});