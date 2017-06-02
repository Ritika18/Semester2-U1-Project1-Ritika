Fish blueFish[] = new Fish[50];
Fish orangeFish[] = new Fish[20];
Fish pinkFish[] = new Fish[100];
Fish greenFish[] = new Fish[10];
Fish yellowFish[] = new Fish[60];

PImage green;
PImage blue;
PImage yellow;
PImage pink;
PImage orange;

void setup()
{
  fullScreen();
  
  green = loadImage("Green.png");
  green.resize(100,0);

  blue = loadImage("Blue.png");
  blue.resize(75,0);

  yellow = loadImage("Yellow.png");
  yellow.resize(150,0);

  pink = loadImage("Pink.png");
  pink.resize(50,0);
  
  orange = loadImage("Orange.png");
  orange.resize(100,0);
    
  for (int i = 0; i < 50; i++)
  {    
    blueFish[i] = new Fish(false, true, new PVector(random(0, width), random(0, height)), 
    new PVector (6, 6), new PVector(0,204,255), 
    new PVector(mouseX, mouseY), new PVector(0,0), blue);    
  }
  
  for (int i = 0; i < 20; i++)
  {  
    orangeFish[i] = new Fish(false, false, new PVector(random(0, 150), random(0, 250)), 
    new PVector (6, 6),  new PVector(250,22,22), 
    new PVector(mouseX, mouseY), new PVector(0,0), orange); 
  }
  
  for (int i = 0; i < 100; i++)
  {  
    pinkFish[i] = new Fish(true, false, new PVector(random(0, width), random(0, height)), 
    new PVector (6, 6),  new PVector(247,37,205), 
    new PVector(mouseX, mouseY), new PVector(0,0), pink); 
  }
  
  for (int i = 0; i < 10; i++)
  {  
    greenFish[i] = new Fish(false, false, new PVector(random(300, 600), random(400, 500)), 
    new PVector (6, 6),  new PVector(63,240,43), 
    new PVector(mouseX, mouseY), new PVector(0,0), green); 
  }
  
  for (int i = 0; i < 60; i++)
  {  
    yellowFish[i] = new Fish(true, false, new PVector(random(width-800, width-600), 
    random(height-600, height-500)), 
    new PVector (6, 6),  new PVector(246,250,125), 
    new PVector(mouseX, mouseY), new PVector(0,0), yellow); 
  }
  
    /*
    _location = location;
    _speed = speed;
    _size = size;
    _colors = colors;
    _mouse = mouse;
    _position = position;
    _image = image;
    */
}


void draw()
{
  background(0);

  
  for (int i = 0; i < 50; i++)
  {
    blueFish[i].Draw();
    blueFish[i].Movement();
  }
  
  for (int i = 0; i < 20; i++)
  {
    orangeFish[i].Draw();
    orangeFish[i].Movement();
  }
  
  for (int i = 0; i < 100; i++)
  {
    pinkFish[i].Draw();
    pinkFish[i].Movement();
  }
  
  for (int i = 0; i < 10; i++)
  {
    greenFish[i].Draw();
    greenFish[i].Movement();
  }
  
  for (int i = 0; i < 60; i++)
  {
    yellowFish[i].Draw();
    yellowFish[i].Movement();
  }
  
  if(millis() > 20000)
  {
    exit();
  }
}