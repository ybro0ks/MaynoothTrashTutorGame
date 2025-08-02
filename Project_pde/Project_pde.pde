import gifAnimation.*; //found this library online https://discourse.processing.org/t/load-gifs-in-processing-3/21743

//import gifAnimation.*;
Gif myGif;
Gif myGif1;
Gif myGif2;
int gameFail; //= 3;
PImage img1, img2, realMap, trash4, trash5;
PImage backgroundArt, iontasBackg, SED;
String maptext = "";
String failtext = "";// = " Although you got this wrong, it is valuable to know why, any material that can decompose should most likely be put into the compost bin as it is not recyclable, plastics and metal materials should be put into the reuseable (recycle) bin because they are reusable and any electronic waste should be put into the ewaste bin because the method of disposal is different remember you have " + gameFail +" attempts left before you have to restart. press the map icon to go back to the map.";
String wintext = "";// = "Well done! click the map icon to return back to the map";
int index;// =0;
PImage img;
int FirstScreen;// = 1; //this checks what screen we are on
String mytext="";  //defines opening tedxt and how its printed out
String screenText=""; // string defining first text
int textPosition; //= 1; // TO create type writer text effect
//defines int and other variables for outside JH building
PImage img3;
int ind; //= 0;
String jhText; // " Welcome to the John Hume building, In this game you will be shown three pieces of garbage, you are expected to drag and drop them in there correct bins. if you fail once you will restart the level, if you get all three correct you move to the next level. failing three times will restart the game, press s to begin"; 
// Declare variables for the image and its position
PImage trash;
PImage trash2;
PImage trash3;
PImage backgroundJH;
int scoreJH ; //= 0;
float sizex ; //= 100;
float sizey; // = 100;
int sizebatteryX ; //= 100;
int sizebatteryY; // = 100;
int sizecX ; // = 100;
int sizecY;//  = 100;
String scoretext;
int score ;
int lives = 1;
float x, y;
float x1, y1;
float x2, y2;
int gamewin;
String CompleteScreen;

void setup() {
  size(1280, 720);
  img = loadImage("muLogo.png");  // first log picture
  img1 = loadImage("mapOfSchool.png"); //load map of school
  img2 = loadImage("chatBox.png");// load elements for background etc
  img3 =  loadImage("johnHumeBuilding.png");
   backgroundJH= loadImage("johnHumeBin.png");
   backgroundArt= loadImage("backgroundArts.png");
   realMap =loadImage ("ArtsMaps.png");
   trash = loadImage("image.png");
  trash2 = loadImage("battery.png");
  trash3 = loadImage("chocBar.png");
   trash4 = loadImage("twixBar.png");
   SED = loadImage ("backgroundSED.png");
  trash5 =loadImage("banana.png");
  iontasBackg = loadImage ("iontasBackGround.png");
  myGif = new Gif(this, "enter.gif"); //load gifs
  myGif1 = new Gif (this, "mrPatrick.gif");
  myGif2 = new Gif (this, "map.gif");
  myGif.play(); // gifs to create pixel game effect
  myGif1.play();
  myGif2.play();
  gameFail = 3;
  FirstScreen = 1;
  PFont mono; //load in font
  mono = createFont("NEUE.ttf", 58); // first font loaded in
  textFont(mono); // these texts are all the text that are printed out to the screen
   maptext =  "Hi my name is Patrick. I am your trash tutor , Here is a map of five buildings in the campus that we will learn how to dispose of waste in When you are ready press any the john hume button to begin"; // intro to the terash tutor
 failtext = " Although you got this wrong, it is valuable to know why, any material that can decompose should most likely be put into the compost bin as it is not recyclable, plastics and metal materials should be put into the reuseable (recycle) bin because they are reusable and any electronic waste should be put into the ewaste bin because the method of disposal is diferent. press the map icon to go back to the map. before restart your total amounts of tries left is ";
 wintext = "Well done! click the map to go return back to the map, your total score now is ";
 CompleteScreen = "Well done you completed my game, thanks for playing, you can now click out.";
  jhText = " Welcome to the John Hume building, In this game you will be shown three pieces of garbage, you are expected to drag and drop them in there correct bins. if you fail once you will restart the level, if you get all three correct you move to the next level. failing three times will restart the game, press s to begin"; 
   mytext="Welcome to the Maynooth University Trash Tutor, in this program you will learn how to dispose correctly of trash in the North Campus buildings and help to make Maynooth University a more sustainable College, please click the enter button to begin.";
  scoretext = " the score is " + score;
  index = 0;
  textPosition= 0; //position for trash entering bins below
   x = 650;
  y = 600;
  x1 = 650;
  y1 = 600;
  x2 = 650;
  y2 = 600;
  scoreJH = 0;
 sizex = 100;
sizey = 100;
sizebatteryX = 100;
 sizebatteryY = 100;
 sizecX = 100;
 sizecY = 100;
 ind = 0;
 gamewin = 0;
}
  void reset (){ // this function when called resets the values when we finish on one level so the next level has the same values to work with instead of stucked on the same old problems
  x = 650;
  y = 600;
  x1 = 650;
  y1 = 600;
  x2 = 650;
  y2 = 600;
  scoreJH = 0;
 sizex = 100;
sizey = 100;
sizebatteryX = 100;
 sizebatteryY = 100;
 sizecX = 100;
 sizecY = 100;
 ind = 0;
 scoreJH = 0;
 lives = 1;
 textPosition= 0;
}

void draw() {
  
 if (lives == 0) //total gamescore to see if user winning or failing
 { gameFail--;
 }
 if (scoreJH == 3){ // to see if user finished game
   gamewin ++;
 }
 if (gameFail == 0){
   FirstScreen = 1;
 }
 if (gamewin == 3){
   FirstScreen = 100; }
  if (FirstScreen == 1) { //declares first screen which is intro screen
    background(0);
    imageMode(CENTER);
    image(img,600,300);
    text("Press A to enter" , 384, 454);
    //image (img, 0, 0, width/2, height/2);
  } else if (FirstScreen == 2){
      background(0);
      textSize(30);
      image(myGif,500,365);
      text(mytext.substring(0, textPosition) , 77, 175, width/2, height/2);
      if (textPosition < mytext.length()){
       textPosition++;

      }
  text(screenText, 100, 100, 500, 500);
}
 else if (FirstScreen == 3){ // second screen which is another intro
   background(0);
   imageMode(CENTER);
 image(img1,640,362); 
 image(img2,640,362); //iload in map etc
 textMode(CENTER);
 textSize(13);
 text(maptext.substring(0, index),   850, 500,  width/4,  height/5); //typewrite text effect
 if (index < maptext.length() ){
   index++;
 }
  image (myGif1, 690,570,  300, 300); //load mr patrick gif

}

else if (FirstScreen == 4){  
  background(0);
  imageMode(CENTER);
  image(img3,640,359);
  textSize(14);
  text(jhText.substring(0, ind), 268 , 514, width/1.7, height/2);
   image (myGif1, 97,546,  300, 300); 
  if (ind < jhText.length() ){
    ind++;
  }
 }
if (FirstScreen == 5){ //rest of code is more of the same just different trash to throw in the bins in different buildings
    //reset();
  if (lives == 1 ){
 imageMode(CENTER);
  //sizex = 100; sizey = 100;
 image(backgroundJH, 640, 360);
 image(trash, x, y, sizex, sizey);
    textSize(30);
  text("SCORE: "+ scoreJH, 25, 694); 
  text("LIVES: "+ lives, 1029, 669); //i got this code from lab2 on how to display scores.
  if (scoreJH==1 ){
    x = 650;
    y = 600;
    image(trash2 , x1 , y1 , sizebatteryX, sizebatteryY); //from down here it loads new trash in draw when a condition is fulfilled
  }
  else if  (scoreJH == 2){
    x = 650;
    y = 600;
    image(trash3 , x2 , y2 , sizecX, sizecY);
  }
     else if  (scoreJH == 3)
   gamewin += 1;
  }
}
else if (FirstScreen == 6){ // the failure screen
  background(0);
   text(failtext.substring(0, textPosition) + gameFail, 314, 109, width/1.55, height/1);
      if (textPosition < failtext.length()){
       textPosition++;
      }
  
  image (myGif2, 146,265,  400, 400);
}
else if (FirstScreen == 7){ //the winning screen
    background(0);
 //  text(wintext.substring(0, textPosition) , 310, 250, width/1.55, height/1);
      if (textPosition < wintext.length()){
        text(wintext.substring(0, textPosition) + gamewin , 310, 250, width/1.55, height/1);
       textPosition++;
      }
   text(wintext.substring(0, textPosition) , 310, 250, width/1.55, height/1);
  image (myGif2, 146,265,  400, 400);
  
}
else if (FirstScreen == 8){ //proper map with no chatbox
    imageMode(CENTER);
    image(realMap,642,359);       //load image for the overview map
}
else if (FirstScreen == 9){ // second last place to throw bins
  imageMode(CENTER);
  image(backgroundArt, 640, 360);
  image(trash4, x, y, sizex, sizey);
    textSize(30);
  text("SCORE: "+ scoreJH, 25, 694); 
  text("LIVES: "+ lives, 1029, 669); //i got this code from lab2 on how to display scores.
  if (scoreJH==1 ){
    x = 650;
    y = 600;
    image(trash2 , x1 , y1 , sizebatteryX, sizebatteryY);
    
  }
  else if  (scoreJH == 2){
     x = 650;
    y = 600;
    image(trash5 , x2 , y2 , sizecX, sizecY);
    
}
   else if  (scoreJH == 3)
   gamewin += 1;
}
else if (FirstScreen == 10){ 
  imageMode(CENTER);
  image(iontasBackg, 640, 360);
  image(trash3, x, y, sizex, sizey);
    textSize(30);
  text("SCORE: "+ scoreJH, 25, 694); 
  text("LIVES: "+ lives,1029, 669); //i got this code from lab2 on how to display scores.
  if (scoreJH==1 ){
    x = 650;
    y = 600;
    image(trash2 , x1 , y1 , sizebatteryX, sizebatteryY);
    
  }
  else if  (scoreJH == 2){
     x = 650;
    y = 600;
    image(trash4 , x2 , y2 , sizecX, sizecY);
    
  }
    else if  (scoreJH == 3)
   gamewin += 1;
}

else if (FirstScreen == 11){
  imageMode(CENTER);
  image(SED, 640, 360);
  image(trash3, x, y, sizex, sizey);
    textSize(30);
  text("SCORE: "+ scoreJH, 25, 694); 
  text("LIVES: "+ lives, 1029, 669); //i got this code from lab2 on how to display scores.
  if (scoreJH==1 ){
    x = 650;
    y = 600;
    image(trash2 , x1 , y1 , sizebatteryX, sizebatteryY);
    
  }
  else if  (scoreJH == 2){
     x = 650;
    y = 600;
    image(trash4 , x2 , y2 , sizecX, sizecY);
    
    
    
  }
  
   else if  (scoreJH == 3)
   gamewin += 1;
  
}
else if (FirstScreen == 100){ //final screen or you win screen
  background(0);
   text(CompleteScreen, 192, 129);
  
      
}

}
void keyPressed(){ // CODE DEFINING IF KEY PRESSED IN FIRST SCREEN MOVE TO SECOND SCREEN
  if (key == 'a' || key == 'A'){
    FirstScreen = 2;
  } //if (FirstScreen == 4){
   if (key == 's' || key == 'S'){
    FirstScreen = 5;
 //  }
   
  }
  if (key == '.' ){
    FirstScreen = 100;
  }
 }
 
 
void mouseReleased(){
  if (mouseX > 756 && mouseX < 1073 && mouseY >250 && mouseY <400){ //if enter button is clicked move screen to three
    FirstScreen = 3;
  }
   if(FirstScreen ==3){
     if (  mouseX > 703 && mouseX < 739 && mouseY >341 && mouseY <370){
       FirstScreen = 4;
     }
   }
if(FirstScreen == 5){ //this code will be recopied over from down here as it is the code that checks if trash is in bins update score keeper and minimise trash for second one
  if (lives > 0 ){
     if (x >542 && x <750 && y > 173 && y < 250){
    x = 0;
    y = 0;
    sizex = 0;
    sizey = 0;
     scoreJH += 1;
  }
   else if (x >194 && x <400 && y > 161 && y < 178){
     x = 0;
     y = 0;
    sizex = 0;
    sizey = 0;
    lives -= 1 ;
    }
  else if (x > 180 && x <1105 && y > 180 && y < 205){
    x = 0; y = 0;
    sizex = 0;
    sizey = 0;
    lives -= 1;
    }
    
    if (x1 >542 && x1 <750 && y1 > 173 && y1 < 250){ //recycling bin
    sizebatteryX = 0; sizebatteryY = 0; x1 = 0; y1= 0;
   lives -= 1;
  }
    else if (x1 >194 && x1 <400 && y1 > 161 && y1 < 178){// 
  sizebatteryX = 0; sizebatteryY = 0; x1 = 0; y1= 0;
    lives -= 1;
    }
  else if (x1 > 930 && x1 <1105 && y1 > 180 && y1 < 205){
    sizebatteryX = 0; sizebatteryY = 0;  x1 = 0; y1= 0;
    lives += 0;
    scoreJH += 1;
    }
    
      if (x2 >542 && x2 <750 && y2 > 173 && y2 < 250){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0;
    scoreJH += 1;
  }
   else if (x2 >194 && x2 <400 && y2 > 161 && y2 < 178){
    sizex = 0; sizey = 0;  x2 = 0; y2 = 0;
    lives -= 1 ;
    }
  else if (x2 > 180 && x2 <1105 && y2 > 180 && y2 < 205){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0;
    lives -= 1;
    }
     if ( scoreJH == 3 || scoreJH == 4){
          reset();
    gamewin += 1;
    FirstScreen = 7;
     }
    if (lives ==0){
         reset();
     FirstScreen = 6;
     gameFail -= 1;
 }
  }
}
if (FirstScreen ==9){
 if (x >542 && x <750 && y > 173 && y < 250){
    x = 0; y = 0; sizex = 0; sizey = 0;
     lives -= 1;
   // println("Well done!");
  }
   else if (x >194 && x <412 && y > 121 && y < 198){
     x = 0; y = 0; sizex = 0; sizey = 0;
  scoreJH += 1 ;
    }
  else if (x > 180 && x <1105 && y > 180 && y < 205){
    x = 0; y = 0; sizex = 0; sizey = 0;
    lives -= 1;
    }
    
    if (x1 >542 && x1 <750 && y1 > 173 && y1 < 250){ //recycling bin
    sizebatteryX = 0; sizebatteryY = 0;
      x1 = 0; y1= 0;
    println("A battery does not go into there");
   lives -= 1;
  }
    else if (x1 >194 && x1 <400 && y1 > 161 && y1 < 178){// 
  sizebatteryX = 0; sizebatteryY = 0;
  x1 = 0; y1= 0;
     println("A battery does not go into there");
    lives -= 1;
    }
  else if (x1 > 930 && x1 <1105 && y1 > 180 && y1 < 205){
    sizebatteryX = 0; sizebatteryY = 0;  x1 = 0; y1= 0;
     println("Well done!");
    lives += 0;
    scoreJH += 1;
    }
    
      if (x2 >542 && x2 <750 && y2 > 173 && y2 < 250){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0;
    println("Well done!");
    scoreJH += 1;
  }
   else if (x2 >194 && x2 <400 && y2 > 161 && y2 < 178){
    sizex = 0; sizey = 0;  x2 = 0; y2 = 0;
    println("Sorry, A rotten apple goes into compost bin not recycling.");
    lives -= 1 ;
    }
  else if (x2 > 180 && x2 <1105 && y2 > 180 && y2 < 205){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0;
    println("Sorry, A rotten apple goes into compost bin not e-waste.");
    lives -= 1;
    }
     if ( scoreJH == 3 || scoreJH == 4){
          reset();
    gamewin += 1;
    FirstScreen = 7;
     }
    if (lives ==0){
         reset();
     FirstScreen = 6;
     gameFail -= 1;
}
}
if (FirstScreen ==10){
   if (x >542 && x <750 && y > 173 && y < 250){
    x = 0; y = 0; sizex = 0; sizey = 0; scoreJH += 1;

  }
   else if (x >194 && x <412 && y > 121 && y < 198){
     x = 0; y = 0; sizex = 0; sizey = 0; lives -= 1;
    }
  else if (x > 180 && x <1105 && y > 180 && y < 205){
    x = 0; y = 0; sizex = 0; sizey = 0; lives -= 1;
    }
    
    if (x1 >542 && x1 <750 && y1 > 173 && y1 < 250){ //recycling bin
    sizebatteryX = 0; sizebatteryY = 0;
      x1 = 0; y1= 0; lives -= 1;
  }
    else if (x1 >194 && x1 <400 && y1 > 161 && y1 < 178){// 
  sizebatteryX = 0; sizebatteryY = 0;
  x1 = 0; y1= 0; lives -= 1;
    }
  else if (x1 > 930 && x1 <1105 && y1 > 180 && y1 < 205){
    sizebatteryX = 0; sizebatteryY = 0;  x1 = 0; y1= 0; scoreJH += 1;
    }
    
      if (x2 >542 && x2 <750 && y2 > 173 && y2 < 250){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0; lives -= 1;
  }
   else if (x2 >194 && x2 <400 && y2 > 161 && y2 < 178){
    sizex = 0; sizey = 0;  x2 = 0; y2 = 0;  lives -= 1;
    }
  else if (x2 > 180 && x2 <1105 && y2 > 180 && y2 < 205){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0; scoreJH += 1;
    }
  

 if ( scoreJH == 3 || scoreJH == 4){
       reset();
    gamewin += 1;
    FirstScreen = 7;
     }
    if (lives ==0){
         reset();
     FirstScreen = 6;
     gameFail -= 1; 
    }
}
if (FirstScreen == 11){
  if (x >542 && x <750 && y > 173 && y < 250){
    x = 0; y = 0; sizex = 0; sizey = 0; scoreJH += 1;

  }
   else if (x >194 && x <412 && y > 121 && y < 198){
     x = 0; y = 0; sizex = 0; sizey = 0; lives -= 1;
    }
  else if (x > 180 && x <1105 && y > 180 && y < 205){
    x = 0; y = 0; sizex = 0; sizey = 0; lives -= 1;
    }
    
    if (x1 >542 && x1 <750 && y1 > 173 && y1 < 250){ //recycling bin
    sizebatteryX = 0; sizebatteryY = 0;
      x1 = 0; y1= 0; lives -= 1;
  }
    else if (x1 >194 && x1 <400 && y1 > 161 && y1 < 178){// 
  sizebatteryX = 0; sizebatteryY = 0;
  x1 = 0; y1= 0; lives -= 1;
    }
  else if (x1 > 930 && x1 <1105 && y1 > 180 && y1 < 205){
    sizebatteryX = 0; sizebatteryY = 0;  x1 = 0; y1= 0; scoreJH += 1;
    }
    
      if (x2 >542 && x2 <750 && y2 > 173 && y2 < 250){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0; lives -= 1;
  }
   else if (x2 >194 && x2 <400 && y2 > 161 && y2 < 178){
    sizex = 0; sizey = 0;  x2 = 0; y2 = 0;  lives -= 1;
    }
  else if (x2 > 180 && x2 <1105 && y2 > 180 && y2 < 205){
    sizecX = 0; sizecY = 0;  x2 = 0; y2= 0; scoreJH += 1;
    }
    if ( scoreJH == 3 || scoreJH == 4){
       reset();
    FirstScreen = 7;
    gamewin += 1;
     }
    if (lives ==0){
         reset();
     FirstScreen = 6;
     gameFail -= 1; 
    }

}


 
 if (FirstScreen == 6 || FirstScreen == 7){
   if (mouseX >56 && mouseX < 210 && mouseY >184 && mouseY < 382){
   FirstScreen =8; 
   lives = 1;
   }
}
 if (FirstScreen == 8){ // this is the choices place in the overall map so there is no roadblocks and the code works properly
        if (  mouseX > 703 && mouseX < 739 && mouseY >341 && mouseY <370){
            reset();
            FirstScreen = 5;
        }
        if (mouseX > 535 && mouseX < 569 && mouseY >309 && mouseY <338){
          reset();
          FirstScreen = 9;
        }
        if  (mouseX > 663 && mouseX < 712 && mouseY >229 && mouseY <261){
          reset();
          FirstScreen = 10;
        }
        if  (mouseX > 817 && mouseX < 851 && mouseY >522 && mouseY <555){
          reset();
          FirstScreen = 11;
 }
 }
}



void mouseDragged(){
  if (FirstScreen == 5){ // these recalibrates the x and y to snap it to the mouse depending on what the value of the screen is
  x = mouseX;
  y = mouseY;
  if (FirstScreen == 5 ){
if (scoreJH==1){
    x1 = mouseX;  y1 = mouseY;
  }
if (scoreJH == 2){
     x2 = mouseX; y2 = mouseY;
  }
 }
 }
   if (FirstScreen == 9){
  x = mouseX;
  y = mouseY;
  if (FirstScreen == 9 ){
if (scoreJH==1){
    x1 = mouseX;  y1 = mouseY;
  }
if (scoreJH == 2){
     x2 = mouseX; y2 = mouseY;
  }
 }
 }
    if (FirstScreen == 10){
  x = mouseX;
  y = mouseY;
  if (FirstScreen == 10 ){
if (scoreJH==1){
    x1 = mouseX;  y1 = mouseY;
  }
if (scoreJH == 2){
     x2 = mouseX; y2 = mouseY;
  }
 }
 }
   if (FirstScreen == 11){
  x = mouseX;
  y = mouseY;
  if (FirstScreen == 11 ){
if (scoreJH==1){
    x1 = mouseX;  y1 = mouseY;
  }
if (scoreJH == 2){
     x2 = mouseX; y2 = mouseY;
  }
 }
 }

}

// Thanks for reading, merry christmas and happy new year!.
