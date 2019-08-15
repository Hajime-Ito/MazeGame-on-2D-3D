void drawMaze3D(){  
 background(utyu);  
 stroke(0);
 camera(PieceX*roadW, PieceY*roadW,0,
 PieceX*roadW + dirX[pieceDir], PieceY*roadW + dirY[pieceDir],0,
 0, 0, -1);

 perspective(radians(100), (float)width/(float)height, 1, 800);


for(int x = 2; x <= boardX -3; x ++){
  for(int y = 2; y <= boardY - 3 ; y ++){
   if(roadMap[x][y] == 0){
     fill(60);
     if(roadMap[int(random(x))][int(random(y))] == 0){
      if(frameCount%60==0){
       fill(255, 204,0);//道に光をランダムに点滅させる
     }
     }
 }else if(roadMap[x][y]== 1){//壁のときｘ、ｙが奇数のとき
   if(x%3 == 0 && y % 3 == 0){
   roadMap[x][y] = 4 ;//隠れ道を生成する
   
 }else{
     fill(180);
 
 }
 } else if(roadMap[x][y]== 2){
    fill(200,200,0);
   }else if(roadMap[x][y]== 3){
    fill(200,0,200);
   }
   else if(roadMap[x][y] == 4){
   fill(0,20,170);
   }
   else if(roadMap[x][y] == 5){
    fill(245);
   }   
   pushMatrix();//現在の座標を保存する
 
   if(roadMap[x][y] == 1 ){
    translate(x*roadW, y*roadW, 0);//オブジェクトの持つ座標
    box(roadW);
  }else if(roadMap[x][y] == 5){ 
     translate(x*roadW, y*roadW, 0);//オブジェクトの持つ座標
     itemx = x*roadW ;
     itemy = y*roadW ;
     if(roadMap[x][y] == roadMap[PieceX][PieceY]){
      box(0);//こうすることで重なるときにブロックが目の前に出て邪魔になることはなくなる
      }else{
      box(8);
}

}  else{
    translate(x*roadW, y*roadW,-roadW/2);
    box(roadW, roadW, 1);
    
  }
   popMatrix();//保存した座標を再展開する　こうすることで座標が次々消えて新しく出てくるようなことがなくなる
  }  
}
}
