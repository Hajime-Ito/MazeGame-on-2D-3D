void initMaze(){
 for(int x = 0 ; x <= boardX - 1 ; x ++ ){
  for(int y = 0 ; y <= boardY - 1 ; y ++ ){//壁を初期化
    roadMap[x][y] = 1;
  }
 }
 
 for(int x = 3 ; x <= boardX - 4 ; x ++){//道を初期化
  for(int y = 3 ; y <= boardY - 4 ; y ++){
   roadMap[x][y] = 0 ;
  }
 }
 
 
 roadMap[2][3] = 2 ;
 roadMap[boardX - 3][boardY - 4] = 3 ; 
 itemtouch1=0 ;
 itemtouch2 = 0;
 itemtouch3 = 0;
 itemtouch4 =0;
 getitem1 = false ;//すべての変数を元に戻す
 getitem2 = false ;
 getitem3 = false ;
 getitem4 = false ;
 PieceX = 2 ;
 PieceY = 3 ;
 EnemyX = boardX - 5 ;
 EnemyY = boardY - 5 ;
 isPlaying = false ;
 isGoal = false ;
 pieceSize = 0.7 * roadW ;
 getitem1 = false; getitem2 = false ; getitem3 = false ; getitem4 = false; 
 
}
