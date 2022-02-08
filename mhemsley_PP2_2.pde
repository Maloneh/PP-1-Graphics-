float y = 0.0;

void draw(){
  background(204); 
  line (100,y,0,y);  
  y = y + 0.5;
  if (y > height) { 
    y = 0.0; 
  }
  println(y);
}
