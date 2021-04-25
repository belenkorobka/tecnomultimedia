void setup() {
    size(600, 600);
    background(255);
}

void draw() {
    
    // TRAZOS__________________________________________________
    noFill();

    // primarios
    triangle(300, 100, 475, 400, 125, 400);

    // secundarios
    triangle(475, 200, 300, 500, 125, 200);

    // terciarios
    triangle(400, 125, 400, 475, 100, 300);
    triangle(200, 125, 500, 300, 200, 475);

    // linea rojo a amarillo
    line(300, 100, 475, 200);
    // linea rojo a magenta
    line(300, 100, 125, 200);
    // linea rojo a naranja
    line(300, 100, 400, 125);
    // linea rojo a fucsia
    line(300, 100, 200, 125);

    // linea verde a amarrillo
    line(475, 400, 475, 200);
    // linea verde a cyan
    line(475, 400, 300, 500);
    // linea verde a verde manzana
    line(475, 400, 500, 300);
    // linea verde a verde agua
    line(475, 400, 400, 475);

    // linea azul a cyan
    line(125, 400, 300, 500);
    // linea azul a magenta
    line(125, 400, 125, 200);
    // linea azul a celeste
    line(125, 400, 200, 475);
    // linea azul a violeta
    line(125, 400, 100, 300);

    // linea magenta a fucsia
    line(125, 200, 200, 125);
    // linea magenta a violeta
    line(125, 200, 100, 300);

    // linea cyan a celeste
    line(300, 500, 200, 475);
    // linea cyan a verde agua
    line(300, 500, 400, 475);

    // linea amarillo a naranja
    line(475, 200, 400, 125);
    // linea amarillo a verde manzana
    line(475, 200, 500, 300);


    // COLORES PRIMARIOS________________________________________
    noStroke();

    // rojo
    fill(255, 0, 0);
    circle(300, 100, 100);

    // verde
    fill(0, 255, 0);
    circle(475, 400, 100);

    // azul
    fill(0, 0, 255);
    circle(125, 400, 100);

    // COLORES SECUNDARIOS______________________________________
    // amarillo
    fill(255, 255, 0);
    circle(475, 200, 100);

    // cyan
    fill(0, 255, 255);
    circle(300, 500, 100);

    // magenta
    fill(255, 0, 255);
    circle(125, 200, 100);

    // COLORES TERCIARIOS________________________________________
    // maranja
    fill(255, 127, 0);
    circle(400, 125, 50);

    // verde manzana
    fill(127, 255, 0);
    circle(500, 300, 50);

    // verde agua
    fill(0, 255, 127);
    circle(400, 475, 50);

    // celeste
    fill(0, 127, 255);
    circle(200, 475, 50);

    // violeta
    fill(127, 0, 255);
    circle(100, 300, 50);

    // fucsia
    fill(255, 0, 127);
    circle(200, 125, 50);
}
