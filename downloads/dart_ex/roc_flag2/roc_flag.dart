import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawROC(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_x + Math.cos(angle) * star_radius;
    num toY = circle_y + Math.sin(angle) * star_radius;

    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();

  ctx.fillStyle = '#fff';
  ctx.fill();

  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();

  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();

  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();

  ctx.fillStyle = '#fff';
  ctx.fill();
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
