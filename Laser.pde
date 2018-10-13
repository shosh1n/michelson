class Laser
{
  Signal _output;
  vector _direction;
  
  vector direction(vector start, vector end)
  {
    vector _direction;
    _direction=new vector (end.diff(start));
    return _direction;
  }
  
  vector _start;
  vector _end;
  Laser(Signal output)
  {
   _output = output; 
  }

}
