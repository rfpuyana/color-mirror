// this sketch works with one of the small macbook pro cameras.

void detectCameras(){
  if (cameras.length == 0) {
    //println("There are no cameras available for capture.");
    exit();
  } else {
    for (int i = 0; i < cameras.length; i++) {
      //println(cameras[14]);
     println(i+"-"+cameras[i]);
    }
  }
} 