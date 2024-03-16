function rankSelect() {
		let rankElement = document.getElementById("rank");
	    let abcElement = document.getElementById("abc");
	    
	    if (abcElement.className === "abc-select background-on" && rankElement.className === "rank-select") {
	        rankElement.className += " background-on";
	    	abcElement.className = "abc-select";
	    }
	}

function abcSelect() {
	let rankElement = document.getElementById("rank");
	let abcElement = document.getElementById("abc");
	
	if (rankElement.className === "rank-select background-on" && abcElement.className === "abc-select") {
		rankElement.className = "rank-select";
		abcElement.className += " background-on";
	}
}

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

document.addEventListener("DOMContentLoaded", function() {
	let listItems = document.querySelectorAll('.movie-list-ul li');

	listItems.forEach(function(item) {
        item.addEventListener('click', function() {
            let previousSelectedItem = document.querySelector('.selected-movie');
            let textSpan = item.querySelector('.text');
           
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-movie');
                let textWhiteSpan = previousSelectedItem.querySelector('.white');
                
                if(textWhiteSpan){
                	textWhiteSpan.classList.remove('white');
            	}
                
                
            }
            
            textSpan.classList.add('white');
            item.classList.add('selected-movie');
        });
    });
});
    
document.addEventListener("DOMContentLoaded", function() {
	let listItems = document.querySelectorAll('.theater-list-ul li');

	listItems.forEach(function(item) {
            item.addEventListener('click', function() {
                let previousSelectedItem = document.querySelector('.selected-theater');
                let textSpan = item.querySelector('.text');
                
                if (previousSelectedItem) {
                    previousSelectedItem.classList.remove('selected-theater');
                    let textWhiteSpan = previousSelectedItem.querySelector('.white');
                    
	                if(textWhiteSpan){
	                	textWhiteSpan.classList.remove('white');
	            	}
                    
                }
                
                textSpan.classList.add('white');
                item.classList.add('selected-theater');
            });
        });
    });

document.addEventListener("DOMContentLoaded", function() {
    let listItems = document.querySelectorAll('.date-list-ul li');

    listItems.forEach(function(item) {
        item.addEventListener('click', function() {
            let previousSelectedItem = document.querySelector('.selected-date-day');
            let whiteSpans = previousSelectedItem ? previousSelectedItem.querySelectorAll('.white') : [];

            // 이전에 선택된 요소의 클래스와 하위 요소 클래스 제거
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-date-day');
                whiteSpans.forEach(span => span.classList.remove('white'));
            }

            // 클릭한 요소에 클래스 추가
            item.classList.add('selected-date-day');

            // 클릭한 요소의 하위 요소에 클래스 추가
            let dayWeek = item.querySelector('.dayWeek');
            let day = item.querySelector('.day');
            let satDayWeek = item.querySelector('.satDayWeek');
            let satDay = item.querySelector('.satDay');
            let sunDayWeek = item.querySelector('.sunDayWeek');
            let sunDay = item.querySelector('.sunDay');

            if (dayWeek && day) {
                dayWeek.classList.add('white');
                day.classList.add('white');
            } else if (satDayWeek && satDay) {
                satDayWeek.classList.add('white');
                satDay.classList.add('white');
            } else if (sunDayWeek && sunDay) {
                sunDayWeek.classList.add('white');
                sunDay.classList.add('white');
            }
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
	let listItems = document.querySelectorAll('.time');

	listItems.forEach(function(item) {
            item.addEventListener('click', function() {
                let previousSelectedItem = document.querySelector('.selected-time-theater');
                let textSpan = item.querySelector('span');

                console.log(previousSelectedItem);
                console.log(textSpan);
                
                if (previousSelectedItem) {
                    previousSelectedItem.classList.remove('selected-time-theater');
                    let textWhiteSpan = previousSelectedItem.querySelector('.white');
                    
	                if(textWhiteSpan){
	                	textWhiteSpan.classList.remove('white');
                        textWhiteSpan.classList.remove('selected-time-theater-span');
	            	}
                }

                item.classList.add('selected-time-theater');
                textSpan.classList.add('white');
                textSpan.classList.add('selected-time-theater-span');
                
            });
        });
    });

