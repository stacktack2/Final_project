

document.addEventListener("DOMContentLoaded", function() {
	let movieItems = document.querySelectorAll('.movie-list-ul li');

	movieItems.forEach(function(movieItem) {
        movieItem.addEventListener('click', function() {
            // 선택한 영화 제목
            let ticketMovie = movieItem.querySelector('.text').innerHTML;
            let ticketMovieCode = movieItem.querySelector('.sreader').innerHTML;

            console.log(ticketMovie);
            console.log(ticketMovieCode);
            
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

            $.ajax({
                url: 'movieCode',
                type: 'POST',
                data: {movieCode: ticketMovieCode},
                success: function(data){
                    console.log("success");
                    console.log(data);
                        let html = "";
                        for (let i = 0; i < data.length; i++) {
                        html += '<img src="'+data[i].cposter+
                                '" alt="'+data[i].cname+'포스터" style="display: inline;">';
                        $(".movie_poster").html(html);

                        let divMovieRating = "";
                        divMovieRating += '<span class="data">'+data[i].cwatchGradeNm+'</span>';
                        $(".movie_rating").html(divMovieRating);

                        }
                },
                error: function(){
                    console.log("error");
                }
            });

            selCno(ticketMovieCode);
        });
    });
});

    
document.addEventListener("DOMContentLoaded", function() {
	let theaterItems = document.querySelectorAll('.theater-list-ul li');

	theaterItems.forEach(function(theaterItem) {
            theaterItem.addEventListener('click', function() {
                let ticketTheater = theaterItem.querySelector('.text').innerHTML;
                let ticketTheaterNo = theaterItem.querySelector('.sreader').innerHTML;

                console.log(ticketTheaterNo);
                
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

                $.ajax({
                    url: 'tiketTheaterNo',
                    type: 'POST',
                    data: {theaterNm: ticketTheaterNo},
                    success: function(data){
                        console.log(data);
                        let html = "";
                        for (let i = 0; i < data.length; i++) {
                            html += '<div class="time-theater">';
                            html += '<span class="title">';
                            html += '<span class="name">' + data[i].shallType + '</span>';
                            html += '<span class="floor">' + data[i].shallLocation + '</span>';
                            html += '<span class="seatcount">(총' + data[i].shallSeat + '석)</span>';
                            html += '</span>';
                            html += '</div>';
                        }
                        $(".time-list").html(html);
                    },
                    error: function(){
                        console.log("error");
                    }
                });
                
                selshallNo(ticketTheaterNo);
            });
        });
    });

document.addEventListener("DOMContentLoaded", function() {
    let dateItems = document.querySelectorAll('.date-list-ul li.date-day');

    dateItems.forEach(function(dateItem) {
        dateItem.addEventListener('click', function() {
            let ticketKRDay = dateItem.querySelector('a span:nth-of-type(1)').innerHTML;
            let ticketDay = dateItem.querySelector('a span:nth-of-type(3)').innerHTML;
            let dateDay = document.getElementById('dateDay');

            let clickYear = ticketDay.substring(0, 4);
            let clickMonth = ticketDay.substring(4, 6);
            let clickDay = ticketDay.substring(6, 8);

            let formatteTicketDay = clickYear+'.'+clickMonth+'.'+clickDay;
            console.log(ticketKRDay);
            console.log(formatteTicketDay);

            let previousSelectedItem = document.querySelector('.selected-date-day');
            let whiteSpans = previousSelectedItem ? previousSelectedItem.querySelectorAll('.white') : [];

            // 이전에 선택된 요소의 클래스와 하위 요소 클래스 제거
            if (previousSelectedItem) {
                previousSelectedItem.classList.remove('selected-date-day');
                whiteSpans.forEach(span => span.classList.remove('white'));
            }

            // 클릭한 요소에 클래스 추가
            dateItem.classList.add('selected-date-day');
            dateDay.innerText = formatteTicketDay+"("+ticketKRDay+")";
            
            
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

            selDay(ticketDay);
            
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


let today = new Date();
let getYear = today.getFullYear();
let getMonth = today.getMonth() + 1; // getMonth는 0부터 시작하므로 1을 더해줌
let getYesterDay = today.getDate() - 1;
const yesterday = `${getYear}-`+
                  `${getMonth >= 10 ? getMonth : '0' + getMonth}-`+
                  `${getYesterDay >= 10 ? getYesterDay : '0' + getYesterDay}`;

let cno = 0; //영화번호 
let shallno = 0;
let sday = "";

function selCno(value){
    cno = value;
}

function selshallNo(value){
    shallno = value;
}

function selDay(ticketDay){
    sday = ticketDay;
    console.log(sday);
    
    
    if(cno > 0 && shallno > 0 && sday > yesterday){
        console.log("cno : "+cno);
        console.log("shallno : "+shallno);
        console.log("sday : "+sday);

        $.ajax({
            url: 'selectScreen',
            type: 'POST',
            data: {cnoParam: cno, shallnoParam: shallno, sday: sday},
            success: function (data) {
                console.log("success");
                console.log(data);
                let html = "";
                let previousShallType = "";
                let previousShallLocation = "";

                for (let i = 0; i < data.length; i++) {
                    let currentShallType = data[i].shallType;
                    let currentShallLocation = data[i].shallLocation;
                    let currentShallseat = data[i].shallSeat;

                    if (currentShallType !== previousShallType ||
                        currentShallLocation !== previousShallLocation ||
                        currentShallseat !== currentShallseat) {
                        // 이전과 다른 shallType 또는 shallLocation이면 새로운 시간대를 추가합니다.
                        if (html !== "") {
                            // 이전에 생성된 내용이 있다면 ul 태그를 닫습니다.
                            html += '</ul>';
                        }
                        // 새로운 shallType 및 shallLocation 정보를 추가합니다.
                        html += '<div class="time-theater">';
                        html += '<span class="title">';
                        html += '<span class="name">' + currentShallType + '</span>';
                        html += '<span class="floor">' + currentShallLocation + '</span>';
                        html += '<span class="seatcount">(총' + data[i].shallSeat + '석)</span>';
                        html += '</span>';
                        html += '<ul>';
                    }
                    // 해당 시간대를 추가합니다.
                    html += '<li>';
                    html += '<a class="button" href="" onclick="return false;" title="">';
                    html += '<span class="time">';
                    html += '<span>' + data[i].sstartTime + '</span>';
                    html += '</span>';
                    html += '</a>';
                    html += '</li>';

                    // 이전 값을 업데이트합니다.
                    previousShallType = currentShallType;
                    previousShallLocation = currentShallLocation;
                }

                // 마지막으로 열려있는 ul 태그를 닫습니다.
                if (html !== "") {
                    html += '</ul>';
                }
                html += '</div>';

                $(".time-list").html(html); // 화면에 표시
                
                let timeItems = document.querySelectorAll('.time');
                

                timeItems.forEach(function(timeItem) {
                    timeItem.addEventListener('click', function() {
                        let previousSelectedItem = document.querySelector('.selected-time-theater');
                        let textSpan = timeItem.querySelector('span');

                        let dateTimeText = timeItem.querySelector('span').innerHTML;
                        let dateTime = document.getElementById('dateTime');
                        
                        if (previousSelectedItem) {
                            previousSelectedItem.classList.remove('selected-time-theater');
                            let textWhiteSpan = previousSelectedItem.querySelector('.white');
                            
                            if(textWhiteSpan){
                                textWhiteSpan.classList.remove('white');
                            }
                        }

                        timeItem.classList.add('selected-time-theater');
                        textSpan.classList.add('white');
                        dateTime.innerText = dateTimeText;

                        let name = timeItem.parentElement.parentElement.querySelector('.name').innerText;
                        let floor = timeItem.parentElement.parentElement.querySelector('.floor').innerText;

                        // 이제 'name'과 'floor'의 내용을 사용할 수 있습니다.
                        console.log("Name: " + name + ", Floor: " + floor);

                    });
                });
            },
            error: function () {
                console.log("error");
            }
        });
        
    }
}