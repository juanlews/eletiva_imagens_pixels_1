Pixel pixels[];
int quantosPixels;

//////

class Pixel {
  
  float x, y;
  float vx, vy;
  
  color cor;
  
  Pixel(float x_, float y_, color cor_) {
    x = x_;
    y = y_;
    cor = cor_;
    vx = random(-1,1);
    vy = random(-1,1);
  }
  
  void desenha() {
    
    x = x + vx;
    y = y + vy;
    
    vx = vx *1.3;
    vy = vy *1.3;
    
    noStroke();
    fill(cor);
    ellipse(x, y, 5, 5);
  }  
}

////

void criaPixels(PImage img) {
  
  if (pixels == null) pixels = new Pixel[750000];
  quantosPixels = 0;
  
  for (int i = 0; i < img.width; i++) {
    for (int j = 0; j < img.height; j++) {
      color c = img.get(i,j);
      pixels[quantosPixels] = new Pixel(i,j, c);
      quantosPixels = quantosPixels + 1;
    }
  }
  
  
}



