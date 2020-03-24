// m,v,e,m,j,s,u,n

float merc_theta;
int merc_rad;

float ven_theta;
int ven_rad;

float earth_theta;
int earth_rad;

float mars_theta;
int mars_rad;

float jup_theta;
int jup_rad;

float sat_theta;
int sat_rad;

float uran_theta;
int uran_rad;

float nept_theta;
int nept_rad;

void setup() {
  size(1000, 1000);

  merc_theta = 0;
  merc_rad = 65;

  ven_theta = 0;
  ven_rad = 100;

  earth_theta = 0;
  earth_rad = 140;

  mars_theta = 0;
  mars_rad = 190;

  jup_theta = 0;
  jup_rad = 250;

  sat_theta = 0;
  sat_rad = 330;

  uran_theta = 0;
  uran_rad = 400;

  nept_theta = 0;
  nept_rad = 460;
}

void draw() {
  background(0, 0, 0);

  // Translate the origin point to the center of the screen
  translate(width/2, height/2);

  // lines
  noFill();
  stroke(255, 255, 255);
  circle(0, 0, merc_rad*2);
  circle(0, 0, ven_rad*2);
  circle(0, 0, earth_rad*2);
  circle(0, 0, mars_rad*2);
  circle(0, 0, jup_rad*2);
  circle(0, 0, sat_rad*2);
  circle(0, 0, uran_rad*2);
  circle(0, 0, nept_rad*2);

  // MERC
  fill(235, 88, 52);
  float merc_x = merc_rad * cos(merc_theta);
  float merc_y = merc_rad * sin(merc_theta);
  circle(merc_x, merc_y, 15);
  // VEN
  fill(235, 174, 52);
  float ven_x = ven_rad * cos(ven_theta);
  float ven_y = ven_rad * sin(ven_theta);
  circle(ven_x, ven_y, 15);
  // EARTH
  fill(0, 0, 255);
  float earth_x = earth_rad * cos(earth_theta);
  float earth_y = earth_rad * sin(earth_theta);
  circle(earth_x, earth_y, 35);
  // MARS
  fill(255, 0, 0);
  float mars_x = mars_rad * cos(mars_theta);
  float mars_y = mars_rad * sin(mars_theta);
  circle(mars_x, mars_y, 30);
  // JUP
  fill(224, 202, 139);
  float jup_x = jup_rad * cos(jup_theta);
  float jup_y = jup_rad * sin(jup_theta);
  circle(jup_x, jup_y, 60);
  // SAT
  fill(139, 217, 201);
  float sat_x = sat_rad * cos(sat_theta);
  float sat_y = sat_rad * sin(sat_theta);
  circle(sat_x, sat_y, 60);
  // URAN
  fill(26, 240, 236);
  float uran_x = uran_rad * cos(uran_theta);
  float uran_y = uran_rad * sin(uran_theta);
  circle(uran_x, uran_y, 40);
  // NEPT
  fill(37, 72, 168);
  float nept_x = nept_rad * cos(nept_theta);
  float nept_y = nept_rad * sin(nept_theta);
  circle(nept_x, nept_y, 40); 

  // SUN
  fill(235, 223, 52);
  circle(0, 0, 50);
  
  float earth_increm = 0.05;
  
  // increment angles

  merc_theta += earth_increm/0.241;
  ven_theta += earth_increm/0.6152;
  earth_theta += earth_increm;
  mars_theta += earth_increm/2;
  jup_theta += earth_increm/11.86;
  sat_theta += earth_increm/29.5;
  uran_theta += earth_increm/84;
  nept_theta += earth_increm/165;
}
