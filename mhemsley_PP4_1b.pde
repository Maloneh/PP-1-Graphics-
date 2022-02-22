void setup() { 
  size(400,400); 
  background(255); 
} 
int k = 0; 
void draw() { 
  rect(0,40,400,360);
    for (int x = 0; x < height; x += 40){
     for (int y = 0; y < height; y += 40){
      fill (k); 
      rect(x,0,40,40); 
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
  
