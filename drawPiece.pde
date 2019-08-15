void drawPiece(){ 

 fill(255);
 text(pieceDir,(PieceX + 0.5) * roadW, (PieceY+ 0.5) * roadW,90);
 fill(0, 20, 200);
 ellipse((PieceX + 0.5) * roadW, (PieceY + 0.5) * roadW, pieceSize, pieceSize);
 fill(250,0,0);
 ellipse((EnemyX + 0.5)*roadW,(EnemyY + 0.5)*roadW, pieceSize, pieceSize);

 //コマの描画
}

void checkFinish(){ 
 if(PieceX == boardX - 3 && PieceY == boardY - 4 && getitem1 
  && getitem2 && getitem3  && getitem4 ){//すべてのブロックを壊しゴールと自分の座標が重なったときに真
  
   isPlaying = false ;
   isGoal = true ;
   goal.play();
   bgm.close();
   EnemyX = 0;
   EnemyY = 0;
   mode3D = false ;
   
   background(hana);
  
   text("YOU WIN", (width/2) - 59 , (height/2),400);//文字が線で囲われているように表示
   text("EXIT e" , width/2 - 39, height/2 + 50, 300); 
   text("YOU WIN", (width/2) - 60 , (height/2) + 1,400);
   text("EXIT e" , width/2 - 40, height/2 + 51, 300); 
 
   fill(255);
   text("YOU WIN", (width/2) - 60 , (height/2),400);
   text("EXIT e" , width/2 - 40, height/2 + 50, 300); 
    if(key == 'e'){
     exit();
 }
  }
}
