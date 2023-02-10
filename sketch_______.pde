PShape base, shoulder, upArm, loArm, end;
float rotX, rotY;
float posX=1, posY=50, posZ=50;
float alpha, beta, gamma;

void setup(){
    size(1200, 800, OPENGL);
    
    base = loadShape("r5.obj");
    shoulder = loadShape("r1.obj");
    upArm = loadShape("r2.obj");
    loArm = loadShape("r3.obj");
    end = loadShape("r4.obj");
    
    shoulder.disableStyle();
    fill (123,104,238);
    shape (shoulder);

    upArm.disableStyle();
    fill (238,130,238);
    shape (upArm);
    
    loArm.disableStyle(); 
    fill (147,112,219);
    shape (loArm);
    
    end.disableStyle(); 
    fill (238,130,238);
    shape (end);    
}



void draw(){ 
   writePos();
   background(240,255,255);
//   smooth();
   lights();
   
   fill(#FFE308); 
   noStroke();
   
   translate(width/2,height/2);
   rotateX(rotX);
   rotateY(-rotY); 
   scale(-4);
   
   translate(0,-40,0);   
     shape(base);
     
   translate(0, 4, 0);
   rotateY(gamma);
     shape(shoulder);
      
   translate(0, 25, 0);
   rotateY(PI);
   rotateX(alpha);
     shape(upArm);
      
   translate(0, 0, 50);
   rotateY(PI);
   rotateX(beta);
     shape(loArm);
      
   translate(0, 0, -50);
   rotateY(PI);
     shape(end);
}

void mouseDragged(){
    rotY -= (mouseX - pmouseX) * 0.01;
    rotX -= (mouseY - pmouseY) * 0.01;
}
