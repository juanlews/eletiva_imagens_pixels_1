import processing.opengl.*;

// imagens - 1
// PImage: variavel que guarda imagens
PImage umaFoto, outraFoto;


void setup() {
  size(1000, 700);
  frameRate(120);

  // carrega a imagem dentro da variavel
  umaFoto = loadImage("1.jpg");
  outraFoto= loadImage("2.jpg");
  criaPixels(outraFoto);
  
}

void draw() {
  background(0);
  

  for (int i = 0; i < quantosPixels; i++) {
    pixels[i].desenha();
  }
}

void mouseDragged() {
  
  for (int i = 0; i < quantosPixels; i++) {
    
    float distancia = dist(mouseX, mouseY, pixels[i].x, pixels[i].y);
    if (distancia < 7) {
      pixels[i].vx = pixels[i].vx + random(-1, 1);
      pixels[i].vy = pixels[i].vy + random(-1, 1);
    }
  }
}
