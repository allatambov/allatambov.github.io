
countdown('timer1', "Jan 24, 2020 23:59:59");
countdown('timer2', "Jan 23, 2020 23:59:59");
countdown('timer3', "Jan 30, 2020 23:59:59");
countdown('timer4', "Feb 05, 2020 23:59:59");
countdown('timer5', "Feb 24, 2020 23:59:59");
countdown('timer6', "Mar 14, 2020 23:59:59");
countdown('timer7', "Apr 14, 2020 23:59:59");
countdown('timer8', "Apr 14, 2020 23:59:59");
countdown('timer9', "May 15, 2020 23:59:59");
countdown('timer10', "May 27, 2020 23:59:59");

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








  	
  	



 