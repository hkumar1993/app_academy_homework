document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('myCanvas');
  var ctx = canvas.getContext('2d');
  canvas.height = 500;
  canvas.width = 500;

  ctx.fillStyle = 'red';
  ctx.fillRect(100,0,200,100);

  ctx.beginPath();
  ctx.arc(60, 60, 50, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'red';
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = 'blue';
  ctx.fill();

  ctx.beginPath();
  ctx.moveTo(0, 150);
  ctx.lineTo(500, 150);
  ctx.strokeStyle = 'black';
  ctx.lineWidth = 1;
  ctx.stroke();

  ctx.beginPath();
  ctx.moveTo(0, 150);
  ctx.arc(50, 150, 50, 0, Math.PI, false);
  ctx.arc(100, 200, 50, Math.PI / 2, Math.PI, false);
  ctx.stroke();

});
