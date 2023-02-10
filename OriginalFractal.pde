double rot = 0;

void setup() {
  size(1280, 720);
}

void draw() {
  rot += 0.01;
  background(0,0,0);
  fractal(700, rot);
}

void fractal(double siz, double rot) {
  if (siz <= 2)
    return;
  fill((int)(255-(siz/10)),(int)(Math.sin(rot)*100),(int)(Math.cos(rot)*100));
  translate(width/2, height/2);
  rotate((float)rot);
  ellipse(0, 0, (float)siz, (float)siz*2/3);
  translate(-width/2, -height/2);
  fractal(siz-15, rot*1.01);
}
