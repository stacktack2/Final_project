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
			let previousSelectedItem = document.querySelector('.selected');
			let listSpan = item.querySelector('.text');
			let listSpanWhite = item.querySelector('.textWhite');

			if (previousSelectedItem && listSpanWhite) {
				previousSelectedItem.classList.remove('selected');
				listSpanWhite.classList.replace('textWhite', 'text');
			}
			
			listSpan.classList.replace('text', 'textWhite');
			item.classList.add('selected');
		});
	});
});