let ticket = new FormData();

document.addEventListener("DOMContentLoaded", function() {
	let movieItems = document.querySelectorAll('.movie-list-ul li');

	movieItems.forEach(function(movieItem) {
        movieItem.addEventListener('click', function() {
            // 선택한 영화 제목
            let ticketMovie = movieItem.querySelector('.text').innerHTML;
            
            // 진행버튼에 movieTitle 추가
            let selectionMovieTitle = document.getElementById('selectionMovieTitle');
            selectionMovieTitle.innerHTML = ticketMovie;

            // class 변경(추가 / 제거)
            let previousSelectedItem = document.querySelector('.selected-movie');
            let textSpan = movieItem.querySelector('.text');
           
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-movie');
                let textWhiteSpan = previousSelectedItem.querySelector('.white');
                
                if(textWhiteSpan){
                	textWhiteSpan.classList.remove('white');
            	}
            }
            
            textSpan.classList.add('white');
            movieItem.classList.add('selected-movie');
            // class 변경(추가 / 제거)
            
            // formData 저장
            ticket.set("ticketMovie", ticketMovie);

            console.log(ticket);
        });
    });
});
    
document.addEventListener("DOMContentLoaded", function() {
	let theaterItems = document.querySelectorAll('.theater-list-ul li');

	theaterItems.forEach(function(theaterItem) {
            theaterItem.addEventListener('click', function() {
                // 선택한 영화 제목
                let ticketTheater = theaterItem.querySelector('.text').innerHTML;
                
                // 진행버튼에 movieTitle 추가
                let selectionTheater = document.getElementById('selectionTheater');
                selectionTheater.innerHTML = ticketTheater;
                
                // class 변경(추가 / 제거)
                let previousSelectedItem = document.querySelector('.selected-theater');
                let textSpan = theaterItem.querySelector('.text');
                
                if (previousSelectedItem) {
                    previousSelectedItem.classList.remove('selected-theater');
                    let textWhiteSpan = previousSelectedItem.querySelector('.white');
                    
	                if(textWhiteSpan){
                        textWhiteSpan.classList.remove('white');
	            	}
                }
                
                textSpan.classList.add('white');
                theaterItem.classList.add('selected-theater');
                // class 변경(추가 / 제거)
                
                // formData 저장
                ticket.set("ticketTheater", ticketTheater);

                console.log(ticket);
                
            });
        });
    });

document.addEventListener("DOMContentLoaded", function() {
    let dateItems = document.querySelectorAll('.date-list-ul li.date-day');

    dateItems.forEach(function(dateItem) {
        dateItem.addEventListener('click', function() {
            let ticketDateWeek = dateItem.querySelector('a span:nth-of-type(1)').innerHTML;
            let ticketDateDay = dateItem.querySelector('a span:nth-of-type(2)').innerHTML;

            let previousSelectedItem = document.querySelector('.selected-date-day');
            let whiteSpans = previousSelectedItem ? previousSelectedItem.querySelectorAll('.white') : [];

            // 이전에 선택된 요소의 클래스와 하위 요소 클래스 제거
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-date-day');
                whiteSpans.forEach(span => span.classList.remove('white'));
            }

            // 클릭한 요소에 클래스 추가
            dateItem.classList.add('selected-date-day');

            // 클릭한 요소의 하위 요소에 클래스 추가
            let dayWeek = dateItem.querySelector('.dayWeek');
            let day = dateItem.querySelector('.day');
            let satDayWeek = dateItem.querySelector('.satDayWeek');
            let satDay = dateItem.querySelector('.satDay');
            let sunDayWeek = dateItem.querySelector('.sunDayWeek');
            let sunDay = dateItem.querySelector('.sunDay');

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
            
            ticket.set('ticketDateWeek', ticketDateWeek);
            ticket.set('ticketDateDay', ticketDateDay);

            console.log(ticket);
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
	let timeItems = document.querySelectorAll('.time');

	timeItems.forEach(function(timeItem) {
        timeItem.addEventListener('click', function() {
            let ticketScreenkind = document.querySelector('.name').innerHTML;
            let ticketScreenhall = document.querySelector('.floor').innerHTML;
            let ticketTime = timeItem.querySelector('span:nth-of-type(1)').innerHTML;

            let previousSelectedItem = document.querySelector('.selected-time-theater');
            let textSpan = timeItem.querySelector('span');
            
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-time-theater');
                let textWhiteSpan = previousSelectedItem.querySelector('.white');
                
                if(textWhiteSpan){
                	textWhiteSpan.classList.remove('white');
            	}
            }

            timeItem.classList.add('selected-time-theater');
            textSpan.classList.add('white');

            ticket.set('ticketScreenkind', ticketScreenkind);
            ticket.set('ticketScreenhall', ticketScreenhall);
            ticket.set('ticketTime', ticketTime);

            console.log(ticket);
            
        });
	});
});

// 이벤트 초기화
document.addEventListener("DOMContentLoaded", function() {
    let resetButton = document.querySelector('.button-reset');
    
    resetButton.addEventListener('click', function() {
        location.reload();
    });
});
