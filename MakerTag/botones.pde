

void botones (){
    fill(btn_svg);
    ButtonBar b = cp5.addButtonBar("bar")
    .setPosition(0, 0)
    .setSize(sY, sX)
    .addItems(split("a b c d e" , " "))
        .setColorBackground(btn_svg)
        .setColorActive(btn_svg_active)
        .setFont(createFont("arial",12))
    ;
      
    textSize(40);

    println(b.getItem("a"));
        b.changeItem("a","text","  Importar SVG | ");
        b.changeItem("b","text","Exportar PNG |");
        b.changeItem("c","text","Fuente");
        b.changeItem("d","text","Atras");
        b.changeItem("e","text","Color");
        b.onMove(new CallbackListener(){
        public void controlEvent(CallbackEvent ev) {
            ButtonBar bar = (ButtonBar)ev.getController();
            println("hello ",bar.hover());
            }
  });
}


void bar(int n) {
  println("bar clicked, item-value:", n);

  if (n == 0) {
    selectInput("Selecciona un archivo (solo SVG):", "fileSelected");
  }

  if( n == 2 ){
    navFuente = !navFuente;
  }


}

