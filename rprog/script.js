
document.getElementById("test").innerHTML = 12;

function hwtimer(point){
  var countDownDate = new Date(point).getTime();
  var x = setInterval(function() {

  var now = new Date().getTime();
  var distance = countDownDate - now;
    
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  var res = [days + " д ", hours + " ч ", minutes + " мин ", seconds + " с "];
    
  if (distance < 0) {
    clearInterval(x);
    var res = "время истекло";
  }
}, 1000);
  return res;
}

res1 = hwtimer("Jan 24, 2020 23:59:59");


document.getElementById("days").innerHTML = res1[0];
document.getElementById("hours").innerHTML = res1[1];
document.getElementById("minutes").innerHTML = res1[2];
document.getElementById("seconds").innerHTML = res1[3];

