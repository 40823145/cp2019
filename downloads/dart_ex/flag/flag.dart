import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;


CanvasRenderingContext2D ctx2;
int flag_w2 = 300;
int flag_h2 = 200;
num circle_x2 = flag_w / 2;
num circle_y2 = flag_h / 2;
void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');


  querySelector("#France").onClick.listen((e) => drawFrance(ctx));
  querySelector("#Russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#Germany").onClick.listen((e) => drawGermany(ctx));
  querySelector("#Netherlands").onClick.listen((e) => drawNetherlands(ctx));
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#Japan").onClick.listen((e) => drawJapan(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

void drawFrance(ctx){


  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w / 1, flag_h );
  ctx.fillStyle = 'rgb(0, 85, 164)';
  ctx.fillRect(0, 0, flag_w / 3, flag_h );
  ctx.fillStyle = 'rgb(250, 60, 50)';
  ctx.fillRect(200, 0, flag_w / 3, flag_h );
  
  }

void drawRussia(ctx){


  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w , flag_h );
  ctx.fillStyle = 'rgb(0, 85, 164)';
  ctx.fillRect(0, 200/3, flag_w , flag_h / 3 );
  ctx.fillStyle = 'rgb(250, 60, 50)';
  ctx.fillRect(0, 200/3*2, flag_w , flag_h / 3 );
  
  }

void drawGermany(ctx){


  ctx.fillStyle = 'rgb(0, 0, 0)';
  ctx.fillRect(0, 0, flag_w , flag_h );
  ctx.fillStyle = 'rgb(255, 12, 12)';
  ctx.fillRect(0, 200/3, flag_w , flag_h / 3 );
  ctx.fillStyle = 'rgb(255, 204, 0)';
  ctx.fillRect(0, 200/3*2, flag_w , flag_h / 3 );
  
  }

void drawNetherlands(ctx){


  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w , flag_h );
  ctx.fillStyle = 'rgb(0, 85, 164)';
  ctx.fillRect(0, 200/3*2, flag_w , flag_h / 3 );
  ctx.fillStyle = 'rgb(250, 60, 50)';
  ctx.fillRect(0, 0, flag_w , flag_h / 3 );
  
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

void drawJapan(ctx2){

  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w2 / 1, flag_h2);
  
  ctx.beginPath();
  ctx.arc(circle_x2, circle_y2, flag_w2 / 4.5, 0, Math.pi * 2, true);
  ctx.closePath();
  ctx.fillStyle = 'rgb(250, 60, 50)';
  ctx.fill();  
}


void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}