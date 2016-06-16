// THIS SKETCH SHOULD BE MORE COMPATIBLE WITH OTHER DEVICES.
// You still need to manually change the font parameters

import processing.video.*;
String[] cameras = Capture.list();

Capture video;
PImage video_res;
ArrayList<Pitsel> pitsels = new ArrayList<Pitsel>();
int cam_width = 320;
int cam_height = 240;
int cols = 32;
int rows = 24;
int k = 0;
PFont my_font;

void setup() {
  smooth(0);
  //fullScreen();
  size(1024,768,JAVA2D);
  detectCameras();
  //video = new Capture(this,cam_width,cam_height,cameras[18]);
  video = new Capture(this,cam_width,cam_height,cameras[22]);
  video.start();
  for (int i=0; i< rows;i++){
    for (int j=0; j< cols;j++){
      pitsels.add(new Pitsel(j*width/cols,i*height/rows));
      k++;
    } 
  }
 fill(255);
 my_font = createFont("KROE0558.TTF",6); 
 textFont(my_font);   
 textSize(12);
 textLeading(10);   
}
void draw() {
    
    video_res = video.get();
    video_res.resize(32,24);
    for (int i=0; i< pitsels.size();i++){        
        //pitsels.get(i).display(video.pixels[i]);
        pitsels.get(i).display(video_res.pixels[i]);
    }
    //image(video,0,0,width,height); // uncomment for watching the cameraview
    //image(video_res,0,0,width,height); // uncomment for watching the cameraview   
}
void captureEvent(Capture c){
  c.read();
}