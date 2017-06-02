class Fish
{
  private PVector _location;
  private PVector _speed;
  private PVector _size;
  private PVector _colors;
  private PVector _mouse;
  private PVector _position;
  private PImage _image;
  private boolean _moveToMouse;
  private boolean _edge;
  
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
     stroke(255);
     fill(_colors.x, _colors.y, _colors.z);
     image(_image,_location.x,_location.y);
     //ellipse(_location.x, _location.y, _size.x, _size.y);
  }
  
  private void Movement()
  {
    if(_moveToMouse == true)
    {
      _mouse.x = mouseX;
      _mouse.y = mouseY;
      
      PVector _position = PVector.sub(_mouse,_location);
    
      _position.normalize();

      _location.add(_position);
    }
    
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