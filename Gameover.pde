void Gameover(){
 background(over);
 bgm.close();
//e gameover1.play();
 gameover.play();
 mode3D = false ;//３Dモードを偽にすることで２Dモードでの画面表示にする

 text("GAME_OVER", (width/2) - 60 , (height/2),400);
 text("EXIT e" , width/2 - 40, height/2 + 50, 300); 
 if(key == 'e'){
  exit();
 }

}
