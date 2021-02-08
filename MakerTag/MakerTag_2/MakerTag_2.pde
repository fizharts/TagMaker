PShape fondo;
int left = 0;
int right = 0;
int x = 0;
int y = 0;
int tSize = 32;
color c = color(255, 200, 100);
color btn_svg = color(255, 23, 68);
color btn_svg_hover = color(255, 23, 68 , 0.8);
int btn_x = 30;
int btn_y = 30;
int btn_width = 100 ;
int btn_height = 50 ;
int [] btn_area = {btn_x , btn_y , btn_height , btn_width , btn_height};
String fondoSvg = "fondoHuesos.svg";


String Nombre  = "Nombre"; 
void setup() {
    size(600, 600);
    
    
    
    y = height/2;
    x = width/2;
    


}

void draw() {


    fondo = loadShape(fondoSvg);
    shape(fondo, 0, 0, 600, 600);
    fill(255);
    textSize(tSize);
    // text(data, x, y, z);
    
    text(Nombre, x, y);

    crearBtn( btn_x , btn_y , 100 , 50 , btn_svg , "Abrir Svg");

    text(("Y:" + mouseY), 400 , 20);
    text(("X:"+ mouseX ), 500 , 20);

    fill(255,0,0);

}

void keyPressed() {
    println("var: "+ keyCode);
    if (keyCode == 8) {
    Nombre = Nombre.substring(0, Nombre.length()-1);
        println(Nombre); 
    }else {

        if( keyCode == 37 || keyCode == 39 || keyCode == 40 || keyCode == 38 || keyCode == 521 || keyCode == 45){
            println("es 37");
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

void crearBtn(int x , int y , int w , int h , color colorBtn , String btn){
    fill(colorBtn);
    textSize( 20 );
    noStroke();
    rect(x, y, w, h);
    fill(255);
    text(btn,  x+5  , y+30);
}

void mousePressed() {
    println(mouseX);
    println(mouseY);
    println( overRect(btn_area[0] , btn_area[1] , btn_area[2] , btn_area[3]) );
    if (overRect(btn_area[0] , btn_area[1] , btn_area[2] , btn_area[3]) ) {
        selectInput("Selecciona un archivo (solo SVG):", "fileSelected");
        
    }
}

boolean overRect(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
    return true;
    } else {
    return false;
    }
}
