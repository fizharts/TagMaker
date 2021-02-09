import controlP5.*;
ControlP5 cp5;
String textValue = "";
PFont font ;
PFont fuentePlaca ;
PFont fuenteDos ;
PShape fondo;
int left = 0;
int right = 0;
int x = 0;
int y = 0;
int tSize = 80;
color c = color(255, 200, 100);
color btn_svg_active = color(179, 9, 42);
color btn_svg = color(255, 23, 68);
color btn_svg_hover = color(218, 30, 66);
int btn_x = 30;
int btn_y = 30;
int btn_width = 100 ;
int btn_height = 50 ;
int [] btn_area = {btn_x , btn_y , btn_height , btn_width , btn_height};
String fondoSvg = "fondoHuesos.svg";
color textoColor = color(255, 23, 68);
int sY = 600;
int sX = 50;
String georgia = "Georgia" ;
boolean navFuente = false;

Textarea myTextarea;
String[] fontList = PFont.list();
String textoFuentes = "";




String Nombre  = "Nombre"; 
void setup() {
    size(600, 600);
    font = createFont("Georgia",20);   
    fuentePlaca = createFont(georgia , 20);
    fuenteDos = createFont("Georgia" , 20); 
    y = height/2;
    x = width/2;
    cp5 = new ControlP5(this);
    botones();
    formulario();
    


}

void draw() {


    
    fondo = loadShape(fondoSvg);
    shape(fondo, 0, 0, 600, 600);
    fill(255);
    
    
    fill(textoColor);
    textFont(fuentePlaca, tSize);
    text(cp5.get(Textfield.class," ").getText(), x, y);
    
    textFont(fuentePlaca, tSize+2);

    fill(255);
    text(cp5.get(Textfield.class," ").getText(), x+1, y+1);

    if (navFuente) {
        funtes();
    }

    println(navFuente);
}

void keyPressed() {
    println("var: "+ keyCode);
    if (keyCode == 8) {
    Nombre = Nombre.substring(0, Nombre.length()-1);
    }else {
        if( keyCode == 37 || keyCode == 39 || keyCode == 40 || keyCode == 38 || keyCode == 521 || keyCode == 45){
        }else{
            Nombre += key;
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
    fondoSvg = selection.getAbsolutePath();
    }
}



void mousePressed() {
    println(mouseX);
    println(mouseY);

}


void controlEvent(ControlEvent theEvent) {
    if(theEvent.isAssignableFrom(Textfield.class)) {
    println("controlEvent: accessing a string from controller '"
            +theEvent.getName()+"': "
            +theEvent.getStringValue()
            );
    }
}


public void input(String theText) {
    println("a textfield event for controller 'input' : "+theText);
}

