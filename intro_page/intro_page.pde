PImage img1;
PImage img2;
PImage img3;
PImage img4;

PImage [] tiles= new PImage [9];

String s = "The players will be allowed to flip over 2 Mahjong tiles at any moment. Tiles will be cleared when two of the same are flipped. Players will win by completing all matches.";

//display 0=intro page, display 1=how, display 2=start, display 3=easy, display 4=medium, display 5=hard
int display;
//level 3=3, level 6=6, level 9=9
int level=3;
//cards, ie={1,1,2,2,3,3}
int [] game;
//total tiles
int totaltiles;
//flippinggg
boolean [] flip=new boolean [totaltiles];
//position of cards
int [][] pos=new int [totaltiles][2];
//overcard
boolean [] overcard=new boolean [totaltiles];
//counting invalid flips
int count=0;
//size of cards
int widthoftile=45;
int heightoftile=widthoftile*3/4;
float buttonY;
float button_height;
float buttonY_move;



void setup(){
  size(800,600);
  img1 = loadImage("background.jpg");
  img2 = loadImage("wood.jpg");
  img3 = loadImage("desk.jpg"); 
  img4 = loadImage("wood2.jpg");
  buttonY = height/5;
  button_height = height/9;
  buttonY_move = height/15;
  
  for(int i=0;i<tiles.length;i++){
    tiles[i]=loadImage(i+".jpg");
  }
  display = 0;
  
}

void draw() { 
  
  //Display = 0, Introduction Page
  if(display==0){
    clear();
    image(img1,0,0, width, height);
    display_title();
    display_key();
  } 
  //Display = 1, How to play
  else if (display==1){
    clear();
    image(img1,0,0, width, height);
    display_HOW_window();
  }
  //Display = 2, Start
  else if (display==2){
    clear();
    image(img2,0,0, width/4, height);
    image(img3,width/4,0, width, height);
    side_page(); 
  } 
  //Display = 3, Level is Easy
  else if (display==3) {
    //level=3;
    //startGame(level);
    //for(int i=0;i<pos.length;i++){
    //  for(int j=0;j<pos[i].length;j++){
    //}
    println ("Here is display= 3");
    }
    //Display = 4, Level is Medium
    else if (display==4) {
    //level=3;
    //startGame(level);
    //for(int i=0;i<pos.length;i++){
    //  for(int j=0;j<pos[i].length;j++){
    //}
    println ("Here is display= 4");
    }
    //Display = 4, Level is hard
    else if (display==5) {
    //level=3;
    //startGame(level);
    //for(int i=0;i<pos.length;i++){
    //  for(int j=0;j<pos[i].length;j++){
    //}
    println ("Here is display= 5");
    }
}


void mouseClicked(){
  //clicks on display 0
  if(display==0){
    if(mouseX>(width/2-width/8-width/12) && mouseX<(width/2-width/8+width/12) && mouseY>(height/2+height/4-height/16) && mouseY<(height/2+height/4+height/16)){
      display=1;
    } else if (mouseX>(width/2+width/8-width/12) && mouseX<(width/2+width/8+width/12) && mouseY>(height/2+height/4-height/16) && mouseY<(height/2+height/4+height/16)){
      display=2;
    }
  }
  //clicks on display 1
  if(display==1){
    if (mouseX>(width/2-width/20) && mouseX<(width/2+width/20) && mouseY>(height/2+height/4-height/30) && mouseY<(height/2+height/4+height/30)){   
      display=0;   
    }
  }
  ////clicks on display 2
  //if(diaplay==2){
  //}
  //  if(mouseX
    
  //if(display==2

  
  
  if(overeasy()==true){
    level=3;
    totaltiles=level*2;
  }else if(overmedium()==true){
    level=6;
  }else if(overhard()==true){
    level=9;
  }else if(overend()==true){
    display =0;
  }
  for(int i=0;i<pos.length;i++){
    //for(int j=0;j<pos[i].length;j++){
      if(overcard[i]==true){
        flip[i]=true;
        count++;
        
        image(tiles[i],pos[i][0],pos[i][1],widthoftile,heightoftile);
      }
 
  }
}


// Define side page
void side_page(){  
  String[] text_name = {"Simple","Medium","Difficult","QUIT"};
  for (int i = 0; i< 4; i++){
    image(img4, width/20, buttonY+(button_height+buttonY_move)*i, width*3/20, button_height);
    fill(68,40,3);
    textAlign(CENTER,CENTER);
    textSize(22);
    text(text_name[i],width/8,buttonY+button_height/2+(button_height+buttonY_move)*i);
  }
}