PShape fondo;
int left = 0;
int right = 0;
int x = 0;
int y = 0;
int tSize = 32;
// me gustaria poder crear los patrones directamente en la aplicacion 
// ya que no asepta mascaras de recorte
// por ejemplo los huesitos y las huellas las tendria que importar por separado 
// y crear el patron directamente con prcessing??
String Nombre  = "Nombre"; 
void setup() {
    size(600, 600);
    fondo = loadShape("fondoHuesos.svg");
    y = height/2;
    x = width/2;
}

void draw() {
    shape(fondo, 0, 0, 600, 600);
    fill(255);
    textSize(tSize);
    // text(data, x, y, z);
    text(Nombre, x, y);
}

void keyPressed() {
    println("var: "+ keyCode);
    
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



