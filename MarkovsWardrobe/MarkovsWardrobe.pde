item h1, h2, h3, h4, s1, s2, s3, s4, p1, p2, p3, p4, t1, t2, t3, t4;
item[] current=new item[4];
Trainer train;
int weather, formality;
int ch=25, ct=25, cp=25, cs=25;
PImage he1, he2, he3, he4, se1, se2, se3, se4, pe1, pe2, pe3, pe4, te1, te2, te3, te4;

void setup() {
  loadMyPics();
  size(800, 600);
  background(110, 110, 250);
  textSize(15);
  makeItems();
  train=new Trainer();
  train.dayOne();
  weather=(int)(Math.random()*4);
  formality=(int)(Math.random()*4);
  textAlign(CENTER);
  fill(0);
  textSize(25);
  text("Press space to begin!", width/2, 50);
}

void draw() {
}

void loadMyPics() {
  he1=loadImage("h1.png");
  he2=loadImage("h2.png");
  he3=loadImage("h3.png");
  he4=loadImage("h4.png");
  te1=loadImage("t1.png");
  te2=loadImage("t2.png");
  te3=loadImage("t3.png");
  te4=loadImage("t4.png");
  pe1=loadImage("p1.png");
  pe2=loadImage("p2.png");
  pe3=loadImage("p3.png");
  pe4=loadImage("p4.png");
}

void makeItems() {
  h1=new item("h1", .25, he1, 1, 3); 
  h2=new item("h2", .25, he2, 3, 0); 
  h3=new item("h3", .25, he3, 0, 1); 
  h4=new item("h4", .25, he4, 2, 2);
  t1=new item("t1", .25, te1, 2, 3); 
  t2=new item("t2", .25, te2, 3, 0); 
  t3=new item("t3", .25, te3, 0, 2); 
  t4=new item("t4", .25, te4, 1, 1);
  p1=new item("p1", .25, pe1, 1, 3); 
  p2=new item("p2", .25, pe2, 2, 1); 
  p3=new item("p3", .25, pe3, 0, 0); 
  p4=new item("p4", .25, pe4, 3, 2);
  s1=new item("s1", .25); 
  s2=new item("s2", .25); 
  s3=new item("s3", .25); 
  s4=new item("s4", .25);
}

void keyPressed() { 
  if (keyCode==32) {
    background(110, 110, 250);
    show();
    train.newDay();
    current[2].show();
    current[1].show();
    current[3].show();
    current[0].show();
    changeVars();
    train.retrain();
    fill(0);
    text("Press space to re-roll", 175, 150);
    text("Weather: "+weather, 175, 250);
    text("Formality: "+formality, 175, 350);
    text("Play God:", 625, 150);
    text("Weather", 625, 250);
    text("Formality", 625, 350);
    rect(525, 225, 40, 40, 50, 50, 50, 50);
    rect(680, 225, 40, 40, 50, 50, 50, 50);
    rect(525, 325, 40, 40, 50, 50, 50, 50);
    rect(685, 325, 40, 40, 50, 50, 50, 50);
    fill(255);
    triangle(535, 255, 555, 255, 545, 235);
    triangle(690, 235, 710, 235, 700, 255);
    triangle(535, 355, 555, 355, 545, 335);
    triangle(695, 335, 715, 335, 705, 355);
  }
}

void mousePressed() {
  if (mouseX>=525&&mouseX<=565) {
    if (mouseY>=225&&mouseY<=265) {
      if (weather<3) {
        weather+=1;
        fill(110, 110, 250);
        rect(0, 200, 300, 100);
        fill(0);
        text("Weather: "+weather, 175, 250);
      }
    }
    if (mouseY>=325&&mouseY<=365) {
      if (formality<3) {
        formality+=1;
        fill(110, 110, 250);
        rect(0, 300, 300, 100);
        fill(0);
        text("Formality: "+formality, 175, 350);
      }
    }
  }
  if (mouseX>=680&&mouseX<=725) {
    if (mouseY>=225&&mouseY<=265) {
      if (weather>0) {
        weather-=1;
        fill(110, 110, 250);
        rect(0, 200, 300, 100);
        fill(0);
        text("Weather: "+weather, 175, 250);
      }
    }
    if (mouseY>=325&&mouseY<=365) {
      if (formality>0) {
        formality-=1;
        fill(110, 110, 250);
        rect(0, 300, 300, 100);
        fill(0);
        text("Formality: "+formality, 175, 350);
      }
    }
  }
}

void changeVars() {
  weather+=(int)(Math.random()*3)-1;
  if (weather>3) {
    weather=3;
  }
  if (weather<0) {
    weather=0;
  }
  formality=(int)(Math.random()*4);
  println("W: "+weather+"\tF: "+formality);
}

void boots() {
  fill(114, 84, 59);
  ellipse(360, 500, 50, 25);
  ellipse(360, 515, 50, 25);
  ellipse(360, 530, 50, 25);
  ellipse(360, 545, 50, 25);
  rect(310, 545, 75, 20, 1000, 0, 0, 0);
  fill(0);
  rect(310, 560, 75, 5);
  fill(114, 84, 59);
  ellipse(440, 500, 50, 25);
  ellipse(440, 515, 50, 25);
  ellipse(440, 530, 50, 25);
  ellipse(440, 545, 50, 25);
  rect(390, 545, 75, 20, 1000, 0, 0, 0);
  fill(0);
  rect(390, 560, 75, 5);
}

void flipFlops() {
  fill(0);
  rect(315, 540, 55, 10, 1000, 0, 0, 0);
  fill(150, 0, 0);
  rect(310, 550, 65, 5);
  rect(325, 535, 5, 15);
  fill(0);
  rect(395, 540, 55, 10, 1000, 0, 0, 0);
  fill(150, 0, 0);
  rect(390, 550, 65, 5);
  rect(405, 535, 5, 15);
}

void tennisShoes() {
  fill(255);
  rect(315, 530, 55, 20, 1000, 0, 0, 0);
  fill(50);
  rect(330, 530, 3, 10);
  rect(335, 530, 3, 10);
  rect(340, 530, 3, 10);
  rect(345, 530, 3, 10);
  fill(255);
  rect(395, 530, 55, 20, 1000, 0, 0, 0);
  fill(50);
  rect(410, 530, 3, 10);
  rect(415, 530, 3, 10);
  rect(420, 530, 3, 10);
  rect(425, 530, 3, 10);
}

void dressShoes() {
  fill(0);
  rect(315, 530, 55, 20, 1000, 0, 0, 0);
  fill(110, 110, 250);
  rect(350, 545, 10, 10);
  fill(0);
  rect(395, 530, 55, 20, 1000, 0, 0, 0);
  fill(110, 110, 250);
  rect(430, 545, 10, 10);
}

void show() {
  fill(0);
  noStroke();
  ellipse(width/2, (height/4)-50, 100, 100);
  fill(0);
  text("Hat Probability: "+ch+"%", 175, 450);
  text("Top Probability: "+ct+"%", 175, 550);
  text("Pants Probability: "+cp+"%", 625, 450);
  text("Shoes Probability: "+cs+"%", 625, 550);
}

void setWeather(int i) {
  weather=i;
}

void setFormality(int i) {
  formality=i;
}
