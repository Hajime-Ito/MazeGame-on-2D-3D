void generateMazeRandom(){
  
 for(int x = 2; x <= boardX - 3 ; x = x + 1 ){
  for(int y = 2; y <= boardY - 3; y ++){
   if(roadMap[x][y] == 1 && x % 2 == 0 && y % 2 == 0){
    int r = int (random(0,4)) ;//
    int dx = dirX[r] ;
    int dy = dirY[r] ;
   
  if(roadMap[x][y] == 0 && x % 2 == 0 && y % 2 == 0 ){
     roadMap[x][y] = 1 ; 
    }else if(roadMap[x + (dx*2)][y + (dy*2)] == 0){  //ランダムに二つ進んだ座標が道のとき壁を生成
      roadMap[x + dx][y + dy] = 1 ;
      roadMap[x + dx*2][y + dy*2] = 1 ; 
     
   }
   
   }
  }
 }
}
