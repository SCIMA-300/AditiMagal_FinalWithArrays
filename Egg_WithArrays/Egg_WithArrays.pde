/**
 * Composite Objects
 * 
 * An object can include several other objects. Creating such composite objects 
 * is a good way to use the principles of modularity and build higher levels of 
 * abstraction within a program.
 */
 
Table table;
int num= 9;
EggRing[] er = new EggRing[num];
EggColor[] ec = new EggColor[num];

import processing.sound.*;
SoundFile file;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;
SoundFile file8;


void setup() {
  
  //variable color, but the egg is in an array
  ec[0] = new EggColor(255, 0, 0);
   ec[1] = new EggColor(0, 255, 0);
    ec[2] = new EggColor(255, 255, 255);
   ec[3] = new EggColor(255, 255, 0);
    ec[4] = new EggColor(100, 100, 100);
    ec[5] = new EggColor(102, 51, 0);
   ec[6] = new EggColor(255, 128, 0);
    ec[7] = new EggColor(255, 0, 127);
    ec[8] = new EggColor(0, 255, 255);

  //loading files for sound
  file = new SoundFile(this, "sample.mp3");
   file1 = new SoundFile(this, "people-talking.mp3");
    file2 = new SoundFile(this, "crowdOutside.wav");
    file3 = new SoundFile(this, "Chair.wav");
    file4 = new SoundFile(this, "ComputerScanner.mp3");
    file5 = new SoundFile(this, "ModelMaking.mp3");
 file6 = new SoundFile(this, "music.mp3");
    file7 = new SoundFile(this, "Traffic.mp3");
    file8 = new SoundFile(this, "ModelMaking.wav");
  table = loadTable("non-digital.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  
  size(640, 640);
   file = new SoundFile(this, "sample.mp3");


     float xpos = width/4;
   float ypos = height/4;
    
 for(int i= 0;i<num; i++){

   er[i]= new EggRing(xpos, ypos, 0.05, 10, color(ec[i].red, ec[i].green,ec[i].blue));
   
   xpos+= width/4;
   if(xpos>width-100){
     xpos=width/4;
    ypos+=height/4; 
   }
  println(ypos);
  
   
}
}


void draw() {
  background(0);
  
 if (mouseX > 315 && mouseX < 325 && mouseY > 315 && mouseY < 325)
  {      
         file3.play();
         println("HI");
    }
    //top mid, blue, computer scanner
    
    if (mouseX > 315 && mouseX < 325 && mouseY > 155 && mouseY < 165)
  { 
         
         file4.play();
         println("HI");
    }
    //bottom mid
      if (mouseX > 315 && mouseX < 325 && mouseY >485  && mouseY < 495)
  { 
         
         file.play();
         println("HI");
    }
    
    //Happy, bot left, yellow
       if (mouseX > 155 && mouseX < 165 && mouseY >485  && mouseY < 495)
  { 
         
         file6.play();
         println("HI");
    }
     //
       if (mouseX > 155 && mouseX < 165 && mouseY >315 && mouseY < 325)
  { 
         
         file1.play();
         println("HI");
    }
     //
       if (mouseX > 155 && mouseX < 165 && mouseY >155 && mouseY < 165)
  { 
         
         file5.play();
         println("HI");
    }
    
          if (mouseX > 485 && mouseX < 495 && mouseY >485  && mouseY < 495)
  { 
         
         file2.play();
         println("HI");
    }
     //
       if (mouseX > 485 && mouseX < 495 && mouseY >315 && mouseY < 325)
  { 
         
         file7.play();
         println("HI");
    }
     //
       if (mouseX > 485 && mouseX < 495 && mouseY >155 && mouseY < 165)
  { 
         
         file8.play();
         println("HI");
    }
 
    if (mouseX > 300 && mouseX < 400 && mouseY > 400 && mouseY < 600)
  { //if the mouse is over the box...
         
         file.play();      
    }
for(int i= 0;i<num; i++){
er[i].transmit();
fill(255,255,0);

}
}