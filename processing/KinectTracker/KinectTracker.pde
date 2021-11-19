KinectWrapper kw;

void setup() {
  size(640, 480, P2D);

  kw = new KinectWrapper(this);
  setupOpenCV(kw.depthImage());
}

void draw() {
  background(0);
  kw.update();
  updateOpenCV(kw.depthImage());
  
  image(kw.depthImage(), 0, 0);
  shape(ps);
  
  surface.setTitle("" + frameRate);
}
