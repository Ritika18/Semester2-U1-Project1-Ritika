/*
Name: Fish Pond

Description: This game uses 5 different colored fish which move around the screen as if
they were in the ocean swimming around. 4 of the fish have designated locations for
where they are moving towards. The last fish, blue, follows the mouse. This makes this 
more interactive with the viewer.
*/

//Creating all of the objects
Fish blueFish[] = new Fish[50];
Fish orangeFish[] = new Fish[20];
Fish pinkFish[] = new Fish[100];
Fish greenFish[] = new Fish[10];
Fish yellowFish[] = new Fish[60];

//making all of the images
PImage green;
PImage blue;
PImage yellow;
PImage pink;
PImage orange;

void setup()
{
  fullScreen();
  
  //calling the images from the data folder and resizing them
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
    
  //constructor for the different fish
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
}


void draw()
{
  background(0);

  //Drawing and moving all of the fish
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
  
  //When the time goes past 20000 millis, then the code will end
  if(millis() > 20000)
  {
    exit();
  }
}