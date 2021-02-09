void funtes (){
      myTextarea = cp5.addTextarea("txt")
                  .setPosition(200,50)
                  .setSize(200,200)
                  .setFont(createFont("arial",12))
                  .setLineHeight(14)
                  .setColor(color(128))
                  .setColorBackground(color(0))
                  .setColorForeground(color(255));
                  ;

                    for (int i = 0; i < fontList.length; ++i) {
                        textoFuentes += fontList[i]+"\n" ;
                    }

myTextarea.setText( textoFuentes );




                    
}







