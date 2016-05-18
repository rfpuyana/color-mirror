class Pitsel { 
 float posX;
 float posY;
 color my_color;
 int pitsel_w;

 Pitsel (float x, float y) {
   posX = x; 
   posY = y; 
   pitsel_w = width/25;
 }  
 void display(color my_color) {
   noStroke();
   int el_R = round(red(my_color));
   int el_G = round(green(my_color));
   int el_B= round(blue(my_color));    
   String color_info = el_R +"\n"+ el_G+"\n"+ el_B;
   //fill(el_R,el_G,el_B);
   fill(0);
   //stroke(255);
   rect(posX,posY,pitsel_w,pitsel_w);
   fill(255);
   text(color_info,posX+4,posY+8);
 }
}  