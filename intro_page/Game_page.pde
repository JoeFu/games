void startGame(int x){
  if (x==3){
    //3 pairs
    int [] game={1,1,2,2,3,3};
    shuffCards(game);

    for (int i=0; i<game.length; i++){
      rect(pos[i][0],pos[i][1],widthoftile,heightoftile);
    }
  }else if(x==6){
    //6 pairs
    int [] game={1,1,2,2,3,3,4,4,5,5,6,6};
     shuffCards(game);

    for (int i=0; i<game.length; i++){
    }
  }else if(x==9){
    //9 pairs
    int [] game={1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9};
    shuffCards(game);
    for (int i=0; i<game.length; i++){
      
    }
  }
}