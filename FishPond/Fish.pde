class Fish
{
  //variables
  private PVector _location;
  private PVector _speed;
  private PVector _size;
  private PVector _colors;
  private PVector _mouse;
  private PVector _position;
  private PImage _image;
  private boolean _moveToMouse;
  private boolean _edge;
  
  //fish constructor to give each of the variables different values
  Fish(boolean edge, boolean moveToMouse, PVector location, PVector speed, PVector colors, PVector mouse, PVector position, PImage image)
  {
    _edge = edge;
    _moveToMouse = moveToMouse;
    _location = location;
    _speed = speed;
    _colors = colors;
    _mouse = mouse;
    _position = position;
    _image = image;
  }
  
  private void Draw()
  {
     //draws the image
     stroke(255);
     fill(_colors.x, _colors.y, _colors.z);
     image(_image,_location.x,_location.y);
     
     //this was to test out the code, so I originally used circles to draw the fish
     //ellipse(_location.x, _location.y, _size.x, _size.y);
  }
  
  private void Movement()
  {
    //This is used for making the position of the fish move towards the mouse -- BLUE fish
    if(_moveToMouse == true)
    {
      _mouse.x = mouseX;
      _mouse.y = mouseY;
      
      PVector _position = PVector.sub(_mouse,_location);
    
      _position.normalize();

      _location.add(_position);
    }
    
    //this is creating boundaries for the rest of the fish so they don't go off screen
    if(_moveToMouse == false)
    {
      
      if(_edge == false)
      {
        PVector _position = PVector.add(_location,_speed); 
        _position.normalize();
        _location.add(_position);
      }
      
      if(_edge == true)
      {
        PVector _position = PVector.sub(_location,_speed);
        _position.normalize();
        _location.sub(_position);
      }   
      
      if (_location.x > width)
      {
        _edge = true;
      }
    
      if (_location.x < 0)
      {
        _edge = false;
      }
    
      if (_location.y > height)
      {
        _edge = true;
      }
    
      if (_location.y < 0)
      {
        _edge = false;
      }   
      
    }

  } 
}