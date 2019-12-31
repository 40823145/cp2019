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


  querySelector("#Russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawRussia(ctx){


  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w , flag_h );
  ctx.fillStyle = 'rgb(0, 85, 164)';
  ctx.fillRect(0, 200/3, flag_w , flag_h / 3 );
  ctx.fillStyle = 'rgb(250, 60, 50)';
  ctx.fillRect(0, 200/3*2, flag_w , flag_h / 3 );
  
  }


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}