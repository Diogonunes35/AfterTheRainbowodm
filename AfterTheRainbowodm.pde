import processing.pdf.*;
import java.util.Collections;

ArrayList<Rainbow> rainbow = new ArrayList<Rainbow>();

float circleNumber;

boolean topSimiCircles = false;
boolean bottomSimiCircles = false;

boolean filled = false;

SimiCircles circleTop;
SimiCircles circleBottom;

PGraphics pg;

PImage flyerfront;
PImage flyerback;

boolean export = false;

void setup() {
  size(874,1240 , P2D);
  background(255);
  smooth(8);
  strokeWeight(3);
  
  flyerfront = loadImage("flyer_front.png");
  flyerback = loadImage("flyer_back.png");

  rainbow.add(new Rainbow(color(239, 51, 64)));
  rainbow.add(new Rainbow(color(254, 80, 0)));
  rainbow.add(new Rainbow(color(252, 227, 0)));
  rainbow.add(new Rainbow(color(0, 191, 111)));
  rainbow.add(new Rainbow(color(0, 161, 224)));
  rainbow.add(new Rainbow(color(104, 91, 199)));

  circleTop = new SimiCircles(circleNumber, !filled);
  circleBottom = new SimiCircles(circleNumber, !filled);

  pg = createGraphics(width, height, P2D);
  pg.beginDraw();
  pg.background(255);
  pg.image(flyerback, 0, 0, width, height);
  pg.endDraw();
}

void draw() {
  image(pg, 0, 0);
}


void keyPressed() {
  if (keyCode == UP) {
    pg.beginDraw();
    circleNumber = round(random(2, 6));
    circleTop.circleNumber = circleNumber;
    circleTop.outline = !filled;
    circleTop.drawCirclesTop(pg);
    pg.endDraw();
  }
  if (keyCode == DOWN) {
    pg.beginDraw();
    circleNumber = round(random(2, 6));
    circleBottom.circleNumber = circleNumber;
    circleBottom.outline = !filled;
    circleBottom.drawCirclesBottom(pg);
    pg.endDraw();
  }

  if (key == 'o' || key == 'O') {
    filled = !filled;
  }

  if (key == 'r' || key == 'R') {
    pg.beginDraw();
    pg.background(255);
    pg.image(flyerback, 0, 0, width, height);
    pg.endDraw();
  }

  if (key == 's' || key == 'S') {
    exportPdf();
  }
}

void exportPdf() {
  PGraphicsPDF pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "AfterTheRainbow.pdf");
  pdf.beginDraw();
  pdf.background(255);
  pdf.image(flyerfront, 0, 0, width, height);

  pdf.nextPage();
  pdf.background(255);
  pdf.image(flyerback, 0, 0, width, height);
  pdf.image(pg, 0, 0);

  pdf.endDraw();
  pdf.dispose();
}
