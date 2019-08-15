void enemy(){
int dir = 0 ;
int x = 0 ;
int y = 0 ;
if(frameCount%10 == 0){//フレームカウントが１０で割り切れるとき描画
 for(int i = 0 ; i < 4 ; i++){
  dir = (EnemyDir + 3 + i) % 4;//今向いている方向から見て左側の方向

 x = EnemyX + dirX[dir] ;//現時点の座標に左向きの方向の変位を足す
 y = EnemyY + dirY[dir] ;
 
  if(roadMap[x][y] == 0 && roadMap[x][y] != 4 || roadMap[x][y] == 5 ){
  break;//その先が道のときかつ隠れ道じゃないとき　またはブロックのときそっちへ移動する
  }

}

 EnemyDir = dir ;//座標を保存し繰り返す
 EnemyX = x ;
 EnemyY = y ;
 
}
}
