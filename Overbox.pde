boolean overeasy(){
  if(mouseX<width/20+width*3/20 && mouseX> width/20 && mouseY< buttonY+(button_height+buttonY_move)*0 +button_height && mouseY> buttonY+(button_height+buttonY_move)*0){
    return true;
  }
  else{
    return false;
  }
}

boolean overmedium(){
  if(mouseX<width/20+width*3/20 && mouseX> width/20 && mouseY< buttonY+(button_height+buttonY_move)*1 +button_height && mouseY> buttonY+(button_height+buttonY_move)*1){
    return true;
  }
  else{
    return false;
  }
}

boolean overhard(){
  if(mouseX<width/20+width*3/20 && mouseX> width/20 && mouseY< buttonY+(button_height+buttonY_move)*2 +button_height && mouseY> buttonY+(button_height+buttonY_move)*2){
    return true;
  }
  else{
    return false;
  }
}

boolean overend(){
  if(mouseX<width/20+width*3/20 && mouseX> width/20 && mouseY< buttonY+(button_height+buttonY_move)*3 +button_height && mouseY> buttonY+(button_height+buttonY_move)*3){
    return true;
  }
  else{
    return false;
  }
}
