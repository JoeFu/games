PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage [] tiles= new PImage [8];

String s = "The players will be allowed to flip over 2 Mahjong tiles at any moment. Tiles will be cleared when two of the same are flipped. Players will win by completing all matches.";
//display 0=intro page, display 1=how, display 2=start, display 3=easy, display 4=medium, display 5=hard
int display;
//level 3=3, level 6=6, level 9=9
int level=3;
//cards, ie={1,1,2,2,3,3}
int [][] card_status;
//total tiles
int totaltiles;
//flippinggg
//boolean [] flip=new boolean [totaltiles];
int count=0;
//size of cards
int widthoftile=45;
int heightoftile=widthoftile*3/4;
float buttonY;
float button_height;
float buttonY_move;

int row;
int col;
int [] crad_show;

int [] cards_numbers3= {1,1,2,2,3,3};
int [] cards_numbers6={1,1,2,2,3,3,4,4,5,5,6,6};
int [] cards_numbers8={1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8};



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
  //Display = 2, Play
  else if (display==2){
    clear();
    image(img2,0,0, width/4, height);
    image(img3,width/4,0, width, height);
    side_page(); 
  } 
  //Display = 3, Level is Easy
  else if (display==3) {
    image(img3,width/4,0, width, height);
    row=2;
    col=3;
    if (card_status.length != row)
    {
      card_status = new int [row][col];
      crad_show = new int [row*col];
    }
    for (int i =0; i<row;i++)
    {
      for (int j =0; j<col;j++)
      {
        //Draw Here !!!!!!!!
        if (card_status[i][j]== 0)
        {
          fill(0,80,60);
          rectMode(CORNER);
          rect(3.0*width/10.0+j*width/4.0,7.0*height/60.0+height*0.5*i,3.0*width/20.0,4.0*height/15.0);
          //println("Display =3",card_status[i][j]);
        }
        else if(card_status[i][j]==1)
        {
          //fill(255,255,255);
          rectMode(CENTER);
          int number=(i*col)+j;
          //println(number);
          image(tiles[cards_numbers3[number]-1],3.0*width/10.0+j*width/4.0,7.0*height/60.0+height*0.5*i,3.0*width/20.0,4.0*height/15.0);
          //println("Display =3",card_status[i][j]); 
        }
        else if (card_status[i][j]==2)
        {
          
        }
        //println(i,j);
      }
    }
  }
    
  //Display = 4, Level is Medium
  else if (display==4) {
    row=3;
    col=4;
    image(img3,width/4,0, width, height);
    if (card_status.length != row)
    {
      card_status = new int [row][col];
      crad_show = new int [row*col];
    }
    for (int i =0; i<row;i++)
    {
      for (int j =0; j<col;j++)
      {
        if(card_status[i][j]==0)
        {
          fill(0,80,60);
          rectMode(CORNER);
          rect(23.0*width/80.0+j*3.0*width/16.0,height/15.0+height/3.0*i,9.0*width/80.0,height/5.0);
        }
        else if (card_status[i][j]==1)
        {
          rectMode(CENTER);
          int number=(i*col)+j;
          //println(number);
          image(tiles[cards_numbers6[number]-1],23.0*width/80.0+j*3.0*width/16.0,height/15.0+height/3.0*i,9.0*width/80.0,height/5.0);
          //println(i,j);
        }
        else if(card_status[i][j]==2)
        {
        }
      }
    }
    //println ("Here is display= 4");
  }
  
    //Display = 5, Level is hard
  else if (display==5) {
    row=4;
    col=4;
    image(img3,width/4,0, width, height);
    if (card_status.length != row)
    {
      card_status = new int [row][col];
      crad_show = new int [row*col];
    }
    for (int i =0; i<row;i++)
    {
      for (int j =0; j<col;j++)
      {
        if (card_status[i][j]==0)
        {
          fill(0,80,60);
          rectMode(CORNER);
          rect(23.0*width/80.0+j*3.0*width/16.0,height/40.0+height/4.0*i,9.0*width/80.0,height/5.0);
          //println(i,j);
        }
        else if (card_status[i][j]==1)
        {
          int number=(i*col)+j;
          //println(number);
          image(tiles[cards_numbers8[number]-1],23.0*width/80.0+j*3.0*width/16.0,height/40.0+height/4.0*i,9.0*width/80.0,height/5.0);
          //println(i,j);
        }
        else if (card_status[i][j]==2) {
          
        }
      }
    }
    
   // println ("Here is display= 5");
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
  //clicks on display 2
  if(display==2||display==3||display==4||display==5){
     if(overeasy()==true){
      level=3;
      //int [] cards_numbers= {1,1,2,2,3,3};
      StartGame(level,cards_numbers3);
      printArray(cards_numbers3);
      }
      else if(overmedium()==true)
      {
      level=6;
      StartGame(level,cards_numbers6);
      printArray(cards_numbers6);
      }
      // Hard
      else if(overhard()==true){
      level=8;
      StartGame(level,cards_numbers8);
      printArray(cards_numbers8);
      }
      else if(overend()==true){
      display =0;
      } 
      if(level==3){
      for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<3.0*width/10.0+j*width/4.0+3.0*width/20.0&&mouseX>3.0*width/10.0+j*width/4.0&& mouseY<7.0*height/60.0+height*0.5*i+4.0*height/15.0&& mouseY>7.0*height/60.0+height*0.5*i){
            println("walaaaaa");
            card_status[i][j]=1;
            }
          }
        }
      }
      // Change Here!
      if(level==6){
      for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<23.0*width/80.0+j*3.0*width/16.0+9.0*width/80.0&&mouseX>23.0*width/80.0+j*3.0*width/16.0&& mouseY<height/15.0+height/3.0*i+height/5.0&& mouseY>height/15.0+height/3.0*i){
            println("walaaaaa");
            card_status[i][j]=1;
          }
         }
       }
     } 
      // Change Here!
      if(level==8){
      for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<23.0*width/80.0+j*3.0*width/16.0+9.0*width/80.0&&mouseX>23.0*width/80.0+j*3.0*width/16.0&& mouseY<height/40.0+height/4.0*i+height/5.0&& mouseY>height/40.0+height/4.0*i){
            println("walaaaaa");
            card_status[i][j]=1;
            }
          }
        }
      } 
  }
}

// Define side page
void side_page(){  
  String[] text_name = {"Simple","Medium","Difficult","Back"};
  for (int i = 0; i< 4; i++){
    image(img4, width/20, buttonY+(button_height+buttonY_move)*i, width*3/20, button_height);
    fill(68,40,3);
    textAlign(CENTER,CENTER);
    textSize(22);
    text(text_name[i],width/8,buttonY+button_height/2+(button_height+buttonY_move)*i);
  }
}


void StartGame (int level,int []cards){
  
  totaltiles=level*2;
  shuffCards(cards);
  if(level == 3){
    init_Card(col,row);
    display = 3;
    card_status = new int [row][col];
    for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<3.0*width/10.0+j*width/4.0+3.0*width/20.0&&mouseX>3.0*width/10.0+j*width/4.0&& mouseY<7.0*height/60.0+height*0.5*i+4.0*height/15.0&& mouseY>7.0*height/60.0+height*0.5*i){
            //println("walaaaaa");
            card_status[i][j]=1;
          }
        }
      }
    
  }
  else if(level == 6){
    //row=3;
    //col=4;
    init_Card(col,row);
    display = 4;
    card_status = new int [row][col];
    
    //Change here
    for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<3.0*width/10.0+j*width/4.0+3.0*width/20.0&&mouseX>3.0*width/10.0+j*width/4.0&& mouseY<7.0*height/60.0+height*0.5*i+4.0*height/15.0&& mouseY>7.0*height/60.0+height*0.5*i){
            //println("walaaaaa");
            card_status[i][j]=1;
          }
        }
      }
  }
  else if(level == 8)
  {
    //col=4;
    //row=4;
    init_Card(col,row);
    display = 5;
    card_status = new int [row][col];
    //Change here
    for (int i =0; i<row;i++)
      {
        for (int j =0; j<col;j++)
        {
          if(mouseX<3.0*width/10.0+j*width/4.0+3.0*width/20.0&&mouseX>3.0*width/10.0+j*width/4.0&& mouseY<7.0*height/60.0+height*0.5*i+4.0*height/15.0&& mouseY>7.0*height/60.0+height*0.5*i){
            //println("walaaaaa");
            card_status[i][j]=1;
          }
        }
      }
  }  
}

void init_Card(int col, int row){ 
    for (int i =0; i<row;i++)
    {
      for (int j =0; j<col;j++)
      {
        //println(i,j);
        card_status[i][j] =0;
      }  
    } 
}
