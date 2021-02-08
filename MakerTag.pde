PShape fondo;
int left = 0;
int right = 0;
int x = 0;
int y = 0;
int tSize = 32;
color c = color(255, 200, 100);

String Nombre  = "Nombre"; 
void setup() {
    size(600, 600);
    
    fondo = loadShape("fondoHuesos.svg");
     selectInput("Select a file to process:", "fileSelected");
    y = height/2;
    x = width/2;
    


}

void draw() {
    
    shape(fondo, 0, 0, 600, 600);
    fill(255);
    textSize(tSize);
    // text(data, x, y, z);
    text(Nombre, x, y);
    crearBtn( 30 , 30 );
}

void keyPressed() {
    println("var: "+ keyCode);
    if (keyCode == 8) {
    Nombre = Nombre.substring(0, Nombre.length()-1);
       println(Nombre); 
    }else {

        if(keyCode != 39 || keyCode != 37 || keyCode != 40 || keyCode != 38 || keyCode != 521 ){
            Nombre += key;
            println( keyCode );
        }
        
    }

    
    switch (keyCode) {
        case 39 :
            x += 5;
        break;
        case 37 :
            x -= 5;
        break;
        case 40 :
            y += 5;
        break;
        case 38 :
            y -= 5;
        break;
        case 521 :
            tSize += 1;
        break;
        case '-' :
            tSize -= 1;
        break;						
    }

  
}

void fileSelected(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
  }
}

void crearBtn(int x , int y){
    fill(200);
    rect(x, y, 200, 100);
    fill(255, 50, 10);
    text("Abir SVG", x + 50, y + 50);
}

void mousePressed() {
    println(mouseX);
    println(mouseY);
}



