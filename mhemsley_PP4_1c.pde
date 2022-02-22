void setup() { 
  size(400,400); 
  background(255); 
} 
int k = 0; 
void draw() { 
  rect(0,80,400,320);
    for (int x = 0; x < height; x += 40){
     for (int y = 0; y < 80; y += 40){
      fill (k); 
      rect(x,y,40,40); 
      if (0 == k) { 
        k = 255; 
      } 
      else { 
        k = 0; 
      }
    }
    if (k == 255) { 
      k = 0; 
    } 
    else { 
      k = 255; 
    } 
  }
}
  
