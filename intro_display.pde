void display_title (){
  fill(7,51,10,200);
  noStroke();
  rectMode(CENTER);
  rect(width/2, height/2,width,height/6); 
  fill(191,242,194);
  textSize(50);
  textAlign(CENTER,CENTER);
  text("Mahjong Memory Game",width/2, height/2);  
}

void display_key (){
  //need to add click & window
  noStroke();
  rectMode(CENTER);
  fill(66,134,224,200);
  rect(width/2-width/8, height/2+height/4,width/6,height/8,20);
  fill(186,219,19,200);
  rect(width/2+width/8, height/2+height/4,width/6,height/8,20);
  fill(255,200);
  textSize(30);
  textAlign(CENTER,CENTER);
  text("HOW",width/2-width/8, height/2+height/4); 
  text("PLAY",width/2+width/8, height/2+height/4);   
  //need to add click
  fill(211,229,213);
  textSize(10);
  textAlign(BOTTOM);
  String name = "Produced by: Chen Gao, Danni Zhan, Jiuhong Du";
  text(name,width-width/3.3, height-10); 
  
}

void display_HOW_window (){  
  fill(0,150);
  rectMode(CORNER);
  rect(width/8,height/8-height/12,width-width/4,height-height/4-height/8,20);
  rectMode(CENTER);
  rect(width/2,height/2+height/4,width/10,height/15,10);
  fill(255);
  textSize(20);
  textAlign(CENTER,CENTER);
  //need to add function
  text("CLOSE",width/2,height/2+height/4);
  textAlign(CENTER);
  textSize(25);
  text(s,width/2,height/2+height/19,width-width/3,height-height/4-height/8);
  
}
