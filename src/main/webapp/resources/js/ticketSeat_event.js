document.addEventListener("DOMContentLoaded", function() {
  let personNumbers = document.querySelectorAll('.personUl');

	personNumbers.forEach(function(personNumberItem) {
    personNumberItem.addEventListener('click', function() {
            let aTag = personNumberItem.querySelector('a');

            
            
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

        });
    });
});