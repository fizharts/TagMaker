boolean overRect(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
    return true;
    } else {
    return false;
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