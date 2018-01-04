// Einzeiliger Kommentar mit Doppelslash
// Kommentare koennen ueberall stehen

void setup () {
  // Fenstergroesse 
  size (600, 200);
  
  // Kantenglaettung
  smooth();

  /*   
   * mehrzeiliger Kommentar
   * beginnt mit Slash+Sternchen und endet mit Sternchen+Slash
   * Lehrzeichen und Zeilenumbrueche werden i.d.R. ignoriert
   * sie dienen vor allem der Lesbarkeit des Codes 
   */
}

void draw () {
  // Hintergrund
  background (#57385c);

  // Aussehen
  strokeWeight (10);
  stroke (255);
  noFill();
  
  // grafische Elemente
  /*
   * Punkt:
   * point(x, y);
   */
  point (50, 100);
  
  /*
   * Linie:
   * linie(x1, y1, x2, y2);
   * Angabe des Start- und Endpunktes
   */
  line (100, 20, 150, 180);
  
  /*
   * Rechteck:
   * rect(x, y, breite, hoehe);
   * Die Koordinaten (x, y) befinden sich an der linken, oberen Ecke des Rechtecks.
   * Breite und Hoehe breiten sich von (x, y) nach rechts und nach unten aus.
   */
  rect (200, 20, 50, 160);
  
  /*
   * Ellipse:
   * ellipse(x, y, breite, hoehe);
   * Die Koordinaten (x, y) befinden sich im Mittelpunkt der Ellipse.
   */
  ellipse (350, 100, 120, 120);
  
  /*
   * Dreieck:
   * triangle(x1, y1, x2, y2, x3, y3);
   */
  triangle (430, 180, 550, 180, 490, 30);
}