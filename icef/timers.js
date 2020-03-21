
countdown('timer1', "Mar 11, 2020 15:00:00");
countdown('timer2', "Mar 14, 2020 23:59:59");
countdown('timer3', "Mar 23, 2020 18:00:00");
countdown('timer4', "Mar 26, 2020 18:00:00");
countdown('timer5', "Mar 30, 2020 23:59:59");
countdown('timer6', "Apr 03, 2020 18:00:00");
countdown('timer7', "Apr 09, 2020 23:59:59");

function countdown(element, point){

	var countDownDate = new Date(point).getTime();
	var x = setInterval(function(){
	
	var now = new Date().getTime();
  	var distance = countDownDate - now;
    
  	var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  	var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  	var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  	
  	res = days + "д " + hours + "ч "+ minutes + "мин " + seconds + "с "
  	document.getElementById(element).innerHTML = res;

	if (distance < 0) {
		clearInterval(x);
    	document.getElementById(element).innerHTML = "время истекло";
  	}

}, 1000);
}








  	
  	



 