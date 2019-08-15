void keyPressed(){
 switch(key){  
  case 'k' :
   isPlaying = true ;
   select1.play();
  break ;
  
  case 'i' :
   initMaze(); 
  break ;
  
  case 'r' :
   generateMazeRandom();
  break ;
  
  case 'd' :
   if(mode3D == true){
    mode3D = false ;
    effect.rewind();
      effect.play();
   }else if(mode3D == false){
    mode3D = true ;
    effect.rewind();
      effect.play();
   }
   break;
   
   case 'l' :
   isenemy = true ;
  
   break ;
 }
 
 if(isPlaying ){
  if(mode3D == true){
    
    if(keyCode == UP){
     asiato.rewind();
     asiato.play();
     if(frameCount % getG == 0){//ブロック2を壊すと動く処理が重くなる
    if(pieceDir == 0 && roadMap[PieceX+ 1][PieceY] != 1 ){
     PieceX++ ;
    }else if(pieceDir == 1 && roadMap[PieceX][PieceY + 1] != 1 ){
     PieceY ++ ;
    }else if(pieceDir == 2 && roadMap[PieceX -1][PieceY] != 1 ){
     PieceX -- ;
    }else if(pieceDir == 3 && roadMap[PieceX][PieceY - 1] != 1 ){
     PieceY -- ;
    }
    }
  }
   else if(keyCode == RIGHT){
    pieceDir = (pieceDir + 1)%4 ;
    
   }
   else if(keyCode == LEFT){
    pieceDir = (pieceDir + 3)%4 ;
    
   }

 }else{ 
   if(frameCount % getG == 0){//
     if(keyCode == UP && roadMap[PieceX][PieceY - 1] != 1 ){
  PieceY = PieceY - 1 ;
  asiato.rewind();
  asiato.play();

}else if(keyCode == RIGHT && roadMap[PieceX+1][PieceY] != 1 ){
  PieceX = PieceX + 1 ;
  asiato.rewind();
  asiato.play();

}else if(keyCode == DOWN && roadMap[PieceX][PieceY +1] != 1 ){
  PieceY = PieceY + 1 ;
  asiato.rewind();
  asiato.play();

}else if(keyCode == LEFT && roadMap[PieceX -1][PieceY] != 1){
  PieceX = PieceX - 1 ;
  asiato.rewind();
  asiato.play();
}
 }
  }
   }
    }
 
