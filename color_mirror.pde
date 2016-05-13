import processing.video.*;
Capture video;
ArrayList<Pitsel> pitsels = new ArrayList<Pitsel>();

int cols = 32;
int rows = 24;
int k = 0;
PFont my_font;

void setup() {
  smooth(0);
  size(800,600);  
  detectCameras();
  video = new Capture(this,cols,rows);  
  video.start();
  
  for (int i=0; i< rows;i++){
    for (int j=0; j< cols;j++){
      pitsels.add(new Pitsel(j*25,i*25));
      k++;
     println(pitsels.size());    
    } 
  }
  
 fill(255);
 my_font = createFont("KROE0558.TTF",6); 
 textFont(my_font, 10);   
 textSize(8);
 textLeading(7);   
}

void draw() { 
    for (int i=0; i< pitsels.size();i++){        
        pitsels.get(i).display(video.pixels[i]);
        
    }
    // image(video,0,0,width,height); // uncomment for watching the cameraview  
}
void captureEvent(Capture c){
   c.read();
}