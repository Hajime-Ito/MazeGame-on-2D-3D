void drawMaze(){
 noStroke();
 background(100);
 textSize(30);
 fill(240,200,0);
 text(0, width - 2*roadW, 80,20);//方角を示す　この数字とコマに表示される数字は一致する　方角がわかる
 text(2, width-3*roadW, 80,20);
 text(1, width - 2.5*roadW,120,20);
 text(3,width - 2.5*roadW,40,20);
 
 for(int x = 2 ; x <= boardX - 3 ; x ++){
  for(int y = 2 ; y <= boardY - 3 ; y ++){
   if(roadMap[x][y] == 0 ){
    fill(100, 0, 0);
   }else if(roadMap[x][y] == 1){
    fill(0, 200, 0);
   }else if(roadMap[x][y] == 2){
    fill(200, 200, 0);
   }else if(roadMap[x][y] == 3){
    fill(200, 0, 200);
   }else if(roadMap[x][y] == 4){
    fill(0, 200, 0);
   }else if(roadMap[x][y] == 5){
    fill(200);
   }
 
 
   rect(roadW * x , roadW * y , roadW , roadW);
   if(roadMap[x][y] == 5){
   rect(roadW * x , roadW * y , roadW , roadW);
   }
  }}
 
 
 textSize(18);
 if(roadMap[3][3] == 5){
   fill(0,0,200);
   text("Block" ,roadW*3, roadW*3 + 40); //ブロックであることを示す
 }
 if(roadMap[3][boardY - 4] == 5){
   fill(245,0,0);
   text("Block!" ,roadW*3, roadW*(boardY-4) + 40);
 }
 if(roadMap[boardX - 4][boardY -4] == 5){
  fill(0,0,200);
   text("Block" ,roadW*(boardX -4), roadW*(boardY-4) + 40);
 }
 if(roadMap[boardX - 4][3] == 5){
 fill(0,0,200);
   text("Block" ,roadW*(boardX -4), roadW*3 + 40);
 }
}
