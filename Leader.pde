class Leader
{
  PVector _location;
  PVector _direction;
  PVector _size;
  
  Leader(PVector location, PVector direction, PVector size)
  {
    _location = location;
    _direction = direction;
    _size = size;
  }
  
 // _speed =/ location
  
  void Draw()
  {
    fill(255);
    ellipse(_location.x, _location.y, _size.x, _size.y);
  }
  
  void Movement()
  {
    _location.add(_direction.mult(2));
    
    if (_location.x > width)
    {
      _direction.mult(-1);
    }
    
    if (_location.x < 0)
    {
      _direction.x = -1;
    }
    
    if (_location.y > height)
    {
      _direction.y = -1;
    }
    
    if (_location.y < 0)
    {
      _direction.y = 1;
    }
    
  }
  
}