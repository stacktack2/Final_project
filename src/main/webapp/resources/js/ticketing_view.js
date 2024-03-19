let day = new Date();
console.log(day.getFullYear());
console.log(parseInt(day.getMonth()+1));
console.log(day.getDate());
    switch (parseInt(day.getDay())){
        case 0: 
            console.log("일");
            break;
        case 1:
            console.log("월");
            break;
        case 2:
            console.log("화");
            break;
        case 3:
            console.log("수");
            break;
        case 4:
            console.log("목");
            break;
        case 5:
            console.log("금");
            break;
        case 6:
            console.log("토");
            break;
    }



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