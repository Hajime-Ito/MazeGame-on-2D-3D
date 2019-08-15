import ddf.minim.*;
import ddf.minim.analysis.*;//minimiライブラリをインポートして音楽を流せるようにする
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage hana,utyu,tera,over;//画像に名前を付ける

int boardX, boardY, roadW ;//盤のX、Yと幅の変数を定義
int [][] roadMap ; //座標を定義
int PieceX , PieceY, EnemyX, EnemyY ;//自分の座標をPIECE　敵の座標をEnemy
boolean isPlaying, isGoal,isenemy, getitem1, getitem2, getitem3, getitem4, mode3D, Gameover ;
float pieceSize ;//コマのサイズを定義する
int dirX[] = {1, 0, -1, 0} ;//配列で進む方向Xの変位を定義する
int dirY[] = {0, 1, 0, -1} ;//配列で進む方向Yの変位を定義する
int pieceDir, EnemyDir, dir ;
int itemx, itemy ;
int itemtouch1 = 0;
int itemtouch2 = 0;
int itemtouch3 = 0;
int itemtouch4 = 0; 
int getG = 1 ;//ブロック２を壊すとこの値が２になり自分の動きに影響を与える

AudioPlayer song , select1 , get , get1, get2, get3, bgm, effect, asiato, gameover1, 
 gameover, goal;//音楽に名前を付ける
Minim minim ;

void setup(){
 size(800, 600, P3D);
 makeBoard(13,9, 46);//盤の大きさを指定する
 initMaze();
 hana = loadImage("hana.jpg");//画像を読み込む
 utyu = loadImage("utyu.jpg");
 tera = loadImage("tera.jpg");
 over = loadImage("gameover.jpg");
 minim = new Minim(this);
 song = minim.loadFile("FIVE_FUTURE.mp3");
 select1 = minim.loadFile("select1.mp3");
 get = minim.loadFile("8bit_Start.mp3");
 get1 = minim.loadFile("8bit_Start.mp3");
 get2 = minim.loadFile("8bit_Start.mp3");
 get3 = minim.loadFile("8bit_Start.mp3");
 effect = minim.loadFile("effect.mp3");
 asiato = minim.loadFile("asiato.mp3");
 gameover1 = minim.loadFile("gameover1.mp3");
 gameover = minim.loadFile("snow_wind.mp3");
 goal = minim.loadFile("goal.mp3");
 bgm = minim.loadFile("maze.mp3");
 bgm.setGain(-5) ;//bgmの音量を下げる
 song.setGain(-5);

}

void draw(){
   
   start1(); //スタート画面を表示
   if(EnemyX == PieceX && EnemyY == PieceY){
    Gameover = true ;//ゲームオーバー画面描画
   }
   if(isPlaying || isGoal){
    Item1(); Item2(); Item3(); Item4(); 
    song.close();
    bgm.play();

     if(isenemy){//敵を表示する
       enemy();
 }
  
       if(mode3D == true){//3dモード判別
        drawMaze3D();  
        lights();
       
          translate((EnemyX )* roadW, (EnemyY ) * roadW, 0);
          shininess(20.20);    //オブジェクトの光沢を設定
          lightSpecular(255, 255, 255);
          noStroke();
          fill(200,0,0);
          sphere(20);
          if(Gameover == true){
           Gameover();}
           checkFinish();//ゴール画面を表示

            }else if(mode3D == false){
              camera(width/2, height/2, (height/2)/tan(PI/6), width/2, height/2, 0, 0,1,0);
              perspective(PI/3, (float)width/(float)height,//視点、視野の中心、視野の幅
             ((height/2)/tan(PI/6))/10, ((height/2)/tan(PI/6))*10 );//遠近法
             drawMaze();
             drawPiece();
                  if(Gameover == true){
                    Gameover();
 }
                    checkFinish();//ゴール画面描画
 }
 }
   
}

void makeBoard(int x , int y , int w){//盤の大きさ
 boardX = x+4 ;//盤は迷路より両辺が2大きい
 boardY = y+4 ;//同上
 roadW = w ;//幅
 roadMap = new int[boardX][boardY] ;//座標
}      
