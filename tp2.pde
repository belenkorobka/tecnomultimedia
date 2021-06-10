PImage image1, image2, image3, image4, image5, image6, image7, image7_2;
float imageSize, imagePosition, imageTransparency;
PFont gothamBlack;
String name;
int screen;

void setup() {
  size(600, 400);
  
  image1 = loadImage("1.png");
  image2 = loadImage("2.png");
  image3 = loadImage("3.png");
  image4 = loadImage("4.png");
  image5 = loadImage("5.png");
  image6 = loadImage("6.png");
  image7 = loadImage("7.png");
  image7_2 = loadImage("7_2.png");

  imageMode(CENTER);
  textAlign(CENTER, CENTER);

  imageSize = 0;
  imagePosition = 0;
  gothamBlack = loadFont("Gotham-Black.vlw");
  screen = 0;
}

void draw() {
  background(0);
  imageTransparency = map(mouseX, 0, 800, 0, 255);

  if (frameCount < 60) {
    name = "A NETFLIX ORIGINAL SERIES";
  } else if (frameCount >= 60 && frameCount < 3*60) {
    name = "WINONA RYDER";
  } else if (frameCount <= 3*60) {
    name = "DAVID HARBOUR";
  }

  if (screen == 0) {
    tint(255, imageTransparency);
    image(image1, 290, 200, 1500 - imageSize, 1500 - imageSize);
    noTint();
    image(image1, 290, 200, 1500 - imageSize, 1500 - imageSize);
    imageSize += 2;
    fill(255);
    textFont(gothamBlack);
    text(name, 300, 200);

    if (frameCount > 6*60) {
      imageSize = 0;
      screen = 1;
    }
  }

  if (screen == 1) {
    name = "FINN WOLFHARD\nMILLIE BOBBY BROWN";
    tint(255, imageTransparency);
    image(image2, 300 - imagePosition, 200 + imagePosition, 800 - imageSize, 800 - imageSize);
    noTint();
    image(image2, 300 - imagePosition, 200 + imagePosition, 800 - imageSize, 800 - imageSize);
    imageSize += 0.5;
    imagePosition += 0.5;
    textFont(gothamBlack);
    text(name, 300, 200);

    if (frameCount > 9*60) {
      screen = 2;
      imageSize = 0;
      imagePosition = 0;
    }
  }

  if (screen == 2) {
    name = "GATEN MATARAZO\ncALEB McLAUGHLIN";
    tint(255, imageTransparency);
    image(image3, 290 - imagePosition, 200 + imagePosition, 800, 800);
    image(image4, 290 + imagePosition, 200 + imagePosition, 800, 800);
    noTint();
    image(image3, 290 - imagePosition, 200 + imagePosition, 800, 800);
    image(image4, 290 + imagePosition, 200 + imagePosition, 800, 800);
    imagePosition += 0.5;
    textFont(gothamBlack);
    text(name, 300, 200); 

    if (frameCount > 12*60) {
      screen = 3;
      imageSize = 0;
      imagePosition = 0;
    }
  }

  if (screen == 3) {
    name = "NATALIA DYER\nCHARLIE HEATON";
    tint(255, imageTransparency);
    image(image5, 290 + imagePosition, 200, 800, 800);
    image(image6, 290 - imagePosition, 200, 800, 800);
    noTint();
    image(image5, 290 + imagePosition, 200, 800, 800);
    image(image6, 290 - imagePosition, 200, 800, 800);   
    imagePosition += 1;
    textFont(gothamBlack);
    text(name, 300, 200); 

    if (frameCount > 14*60) {
      screen = 4;
      imageSize = 0;
      imagePosition = 0;
    }
  }

  if (screen == 4) {
    tint(255, random(160, 255));
    image(image7_2, 300, 200, 1500 - imageSize, 1500 - imageSize);
    noTint();
    image(image7, 300, 200, 1500 - imageSize, 1500 - imageSize);
    imageSize += 2;
  }
}
