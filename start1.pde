void start1(){
  background(tera);
   if (frameCount / 30 % 2 == 0) {
    fill(0,0,0,0);//透明にする
  }
    else{
     fill(230,200,0);
  }
      song.play();
      textSize(50);
      text("Start k", width/3, height/2 + 50);
      fill(250);
      text("MAZE_Planet",width/3 - 55, height/3,220);
 
}
