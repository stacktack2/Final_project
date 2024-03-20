let todayDate = new Date();

let currentYear = todayDate.getFullYear();
let currentMonth = todayDate.getMonth() + 1; // getMonth는 0부터 시작하므로 1을 더해줌
let currentDay = todayDate.getDate();
function currentDayKR(year, month, day) { // 날짜의 요일을 가져오는 함수
    const days = ['일', '월', '화', '수', '목', '금', '토'];
    const date = new Date(year, month - 1, day);
return days[date.getDay()];
}

// 2주 후 날짜 계산
let futureDate = new Date(todayDate.getTime() + 14 * 24 * 60 * 60 * 1000);
let futureYear = futureDate.getFullYear();
let futureMonth = futureDate.getMonth() + 1;
let futureDay = futureDate.getDay();
function futureDayKR(year, month, day) { // 날짜의 요일을 가져오는 함수
    const days = ['일', '월', '화', '수', '목', '금', '토'];
    const date = new Date(year, month - 1, day);
return days[date.getDay()];
}

// 2주 기간동안의 날짜 반복문
for(let i = todayDate.getTime(); i <= futureDate.getTime(); i += 24 * 60 * 60 * 1000){
    let date = new Date(i);
    currentYear = date.getFullYear();
    currentMonth = date.getMonth() + 1;
    currentDay = date.getDate();
    let currentDayOfKR = currentDayKR(currentYear, currentMonth, currentDay);

    console.log(date);
    console.log(currentYear);
    console.log(currentMonth);
    console.log(currentDay);
    console.log(currentDayOfKR);
}

// HTML에 현재 날짜 정보 추가
const dateList = document.querySelectorAll('.date-list-ul');
console.log(dateList);

// 영화 예매율 순 정렬
function rankSelect() {
		let rankElement = document.getElementById("rank");
	    let abcElement = document.getElementById("abc");
	    
	    if (abcElement.className === "abc-select background-on" && rankElement.className === "rank-select") {
	        rankElement.className += " background-on";
	    	abcElement.className = "abc-select";
	    }
	}

// 영화 가나다 순 정렬
function abcSelect() {
	let rankElement = document.getElementById("rank");
	let abcElement = document.getElementById("abc");
	
	if (rankElement.className === "rank-select background-on" && abcElement.className === "abc-select") {
		rankElement.className = "rank-select";
		abcElement.className += " background-on";
	}
}

// 영화 등급 이미지 가져오기
document.addEventListener("DOMContentLoaded", function() {
	let movieAges = document.querySelectorAll('.movieAge');

	movieAges.forEach(function(movieAge) {
		let age = movieAge.textContent.trim();
		if (age === 'all') {
			movieAge.style.backgroundImage = 'url(../resources/movieAge/all.png)';
		} else {
			movieAge.style.backgroundImage = 'url(../resources/movieAge/' + age + '.png)';
		}
	});
});