
function pre(any) {
	document.addEventListener('readystatechange', () => {
		if (document.readyState === 'interactive') {
			any();
			document.addEventListener('DOMContentLoaded', () => {
			}); 
		} else {	
			document.onload = postFunc();
		}
	})
}

function preFunc() {
	alert('Я функция до загрузки DOM дерева');
}

function postFunc () {
	alert('Я функция после загрузки DOM дерева');
}

pre(preFunc); // Замыкание
