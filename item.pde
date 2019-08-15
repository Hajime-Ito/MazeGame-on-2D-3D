void Item1(){

 if(PieceX == 3 && PieceY == 3){
  itemtouch1 = 1 ;
  getitem1 =  true ;//自分とブロックの座標が重なったときブロックが壊されたことを真とする
  get.play();
 
   if(getitem1){ 
    roadMap[3][3] = 0 ;//上の条件が真のとき道と描画
}
  }else if(getitem1 == false ){
    roadMap[3][3] = 5 ;
  }//それ以外のときブロックを表示
  }

void Item2(){
  if(PieceX ==3 && PieceY == boardY - 4 ){
     itemtouch2 = 2 ; 
     getitem2 =  true ;
     get1.play();
     getG = 2 ;
     
     if(getitem2){ 
      roadMap[3][boardY -4] = 0;
}
 }else if(getitem2 == false){
       roadMap[3][boardY -4] = 5; }

}

 void Item3(){   
 if(PieceX == boardX - 4 && PieceY == boardY -4 ){
    itemtouch3 = 3 ; 
    getitem3= true ;
    get2.play();
       
   if(itemtouch3 == 3){
     roadMap[boardX - 4][boardY - 4] = 0;
}
 }else if(itemtouch3 != 3) {
   roadMap[boardX - 4][boardY - 4] = 5;
 }
}

void Item4(){
       
  if(PieceX == boardX -4 && PieceY == 3 ){
    itemtouch4 = 4 ; 
    getitem4 =true ; 
    get3.play();
           
    if(getitem4){
     roadMap[boardX - 4][3] = 0;
}
     }else if(getitem4 == false){
       roadMap[boardX - 4][3] = 5;
     }
        }
        
